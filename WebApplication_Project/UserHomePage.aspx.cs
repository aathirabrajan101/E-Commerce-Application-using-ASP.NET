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
    public partial class UserHomePage : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string dl = "select* from CategoryTab where Cat_Status='Available'";
                DataTable dt = ob.Fun_ExDataTable(dl);
                DataList1.DataSource = dt;
                DataList1.DataBind();
                
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)//command event of image button
        {
            int getid = Convert.ToInt32(e.CommandArgument); //to get the corresponding Cat_Id which set as command argument
            string sel = "select * from ProductTab where Cat_Id=" + getid + "";
            Session["cid"] = getid;  //category ID
            string Cname = "select Cat_Name from CategoryTab where Cat_Id=" + getid + "";
            string cc = ob.Fun_ExScalar(Cname).ToString();
            Session["cname"] = cc;
            Response.Redirect("ViewAllProducts.aspx");
          
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Cart.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("BillPage.aspx");
        }
    }
}