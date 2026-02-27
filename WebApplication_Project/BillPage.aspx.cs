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
    public partial class WebForm1 : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sel1 = "select Bill_Id, Bill_Total from Billtab where User_Id=" + Session["userid"] + " and Bill_status=1";
            SqlDataReader dr1 = ob.Fun_ExReader(sel1);
            while (dr1.Read())
            {
                lbbillnum.Text = dr1["Bill_Id"].ToString();
                lbsubtotal.Text = dr1["Bill_Total"].ToString();
                Session["grandtotal"] = lbsubtotal.Text;
            }
            
            lbdate.Text = DateTime.Now.ToString();
            string sel2 = "select User_Name,User_Address,User_Phone,Pro_Name,Pro_Price,Order_Quantity,Order_Subtotal from UserTab join OrderTab on " +
                "UserTab.User_Id=OrderTab.User_Id join ProductTab on OrderTab.Pro_Id=ProductTab.Pro_Id where UserTab.User_Id="+Session["userid"] +" and OrderTab.User_Id="
                +Session["userid"]+" and OrderTab.Order_Status='Ordered'";
            SqlDataReader dr = ob.Fun_ExReader(sel2);
            while (dr.Read())
            {
                lbname.Text = dr["User_name"].ToString();
                lbaddr.Text = dr["User_address"].ToString();
                lbphn.Text = dr["User_Phone"].ToString();

            }
            DataSet ds = ob.Fun_ExAdapter(sel2);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("PayPage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e) //order cancel
        {
            string del = "delete from BillTab where User_Id=" + Session["userid"] + " and Bill_Status=1";
            int d = ob.Fun_ExNonQuer(del);
            string upd = "update OrderTab set Order_Status='Cancelled' where User_Id=" + Session["userid"] + " and Order_Status='Ordered'";
            int u = ob.Fun_ExNonQuer(upd);
            if (d == 1 && u == 1)
            {
                Response.Redirect("UserHomePage.aspx");
            }
        }
    }
}