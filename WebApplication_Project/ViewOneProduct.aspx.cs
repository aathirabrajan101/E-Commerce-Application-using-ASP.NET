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
    public partial class ViewOneProduct : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();

        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                string dl = "select* from ProductTab where Pro_Id='" + Session["pid"] + "'";
                SqlDataReader dr = ob.Fun_ExReader(dl);
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["Pro_Image"].ToString();
                    lbname.Text = dr["Pro_Name"].ToString();
                    lbdesc.Text = dr["Pro_Description"].ToString();
                    lbprice.Text = dr["Pro_Price"].ToString();                  
                    Session["price"] = dr["Pro_Price"].ToString();
                    Session["prostock"] = dr["Pro_Stock"].ToString();
                    Session["proimg"] = Image1.ImageUrl;

                }
                DataSet ds = ob.Fun_ExAdapter(dl);
                DropDownList1.Items.Clear();
                if (ds.Tables[0].Rows.Count > 0)
                {
                    int stock = Convert.ToInt32(ds.Tables[0].Rows[0]["Pro_stock"]);
                    if (stock > 0)
                    {
                        for (int i = 1; i <= stock; i++)
                        {
                            DropDownList1.Items.Add(i.ToString());
                        }
                       
                    }
                    else
                    {
                        lbstock.Text = "Not Available";
                    }
                }

            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHomePage.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)//add to cart button
        {
            int k= Convert.ToInt32(Session["price"]);
            int l= Convert.ToInt32(DropDownList1.SelectedItem.Text);
            int s= Convert.ToInt32(Session["prostock"]);


            string ins = "Insert into CartTab values('" + Session["userid"] + "','"+Session["pid"]+"','"+l+"','"+k*l+"',1)";
            int m = ob.Fun_ExNonQuer(ins);
            if (m == 1)
            {
                Label1.Visible = true;
                Label1.Text = "Added";
            }
           
        }
    }
}