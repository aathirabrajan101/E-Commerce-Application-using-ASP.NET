using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication_Project
{
    public partial class Cart : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string selcount = "select count(Cart_Id) from cartTab where User_Id=" + Session["userid"] + " and Cart_Status=1";
            int cnt = Convert.ToInt32(ob.Fun_ExScalar(selcount));
            if (cnt == 0)
            {
                Label3.Visible = true;
                Button3.Visible = true;
                Button2.Visible = false;
            }
            else
            {
               if (!IsPostBack)
                {
                    Grid();
                }
            }

           

        }
        public void Grid()
        {
            string s = "select * from CartTab join ProductTab on CartTab.Pro_Id=ProductTab.Pro_Id where User_Id="+Session["userid"]+" and Cart_Status=1";
            DataSet ds = ob.Fun_ExAdapter(s);
            GridView1.DataSource = ds;
            GridView1.DataBind();

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            Grid();
        }

        protected void GridView1_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            int i = e.RowIndex;
            int proid = Convert.ToInt32(GridView1.DataKeys[i].Values["Pro_Id"]);
            int userid = Convert.ToInt32(GridView1.DataKeys[i].Values["User_Id"]);

            string del = "delete from CartTab where Pro_Id=" + proid + " and User_Id=" + userid + "";
            ob.Fun_ExNonQuer(del);
            Grid();
        }

        protected void GridView1_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            GridView1.EditIndex = -1;
            Grid();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            int i = e.RowIndex;
            int proid =Convert.ToInt32(GridView1.DataKeys[i].Values["Pro_Id"]);
            int userid =Convert.ToInt32(GridView1.DataKeys[i].Values["User_Id"]);
            int price= Convert.ToInt32(GridView1.DataKeys[i].Values["Pro_Price"]);

            TextBox tbquant = (TextBox)GridView1.Rows[i].FindControl("tbquant"); //matching
            int quantity = Convert.ToInt32(tbquant.Text);
            int subtotal = quantity * price;

            string up = "update CartTab set Cart_Quantity=" + quantity + ",Cart_Subtotal= " + subtotal+ " where Pro_Id=" + proid + " and User_Id=" + userid + "";
            ob.Fun_ExNonQuer(up);
            GridView1.EditIndex = -1;
            Grid();




        }

        protected void Button2_Click(object sender, EventArgs e)//confirm order button
        {
            string sel="select Pro_Id from CartTab where User_Id='"+Session["userid"]+"' and Cart_Status=1";
            SqlDataReader dr = ob.Fun_ExReader(sel);
            List<int> pdtlist = new List<int>();
            while (dr.Read())
            {
                pdtlist.Add(Convert.ToInt32(dr["Pro_Id"]));
            }
            
            foreach (int pid in pdtlist)
            {
                string sel2 = "select * from CartTab where User_Id='" + Session["userid"] + "' and Cart_Status=1 and Pro_Id=" + pid + "";
                SqlDataReader dr1 = ob.Fun_ExReader(sel2);
                int quant = 0;
                int subtotal = 0;
                while (dr1.Read())
                {
                    quant = Convert.ToInt32(dr1["Cart_Quantity"]);
                    subtotal = Convert.ToInt32(dr1["Cart_Subtotal"]);
                }

                string ins = "insert into OrderTab values (" + Session["userid"] + "," + pid + "," + quant + "," + subtotal + ",'Ordered')";
                int s = ob.Fun_ExNonQuer(ins);
                if (s == 1)
                {
                    Label2.Visible = true;
                    Label2.Text = "Your Order is Confirmed";
                }
                string up = "update CartTab set Cart_Status=0 where User_Id= '" + Session["userid"] + "' and Cart_Status=1 and Pro_Id=" + pid + "";
                ob.Fun_ExNonQuer(up);
               
            }
            string selsum = "select SUM(Order_Subtotal) from OrderTab where User_Id =" + Session["userid"] + " and Order_Status='Ordered'";
            string sum = ob.Fun_ExScalar(selsum).ToString();
            Session["subtotal"] = sum;
            string today = DateTime.Now.ToString("yyyy-MM-dd"); //date insertion
            string insert = "insert into BillTab values(" + Session["userid"] + "," + Convert.ToInt32(sum) + ",'" + today + "',1)";
            ob.Fun_ExNonQuer(insert);
            Response.Redirect("BillPage.aspx");

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHomePage.aspx");
        }
    }
}