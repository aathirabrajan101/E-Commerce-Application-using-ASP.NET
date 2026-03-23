using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace WebApplication_Project
{
    public partial class ViewAllProducts : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                Label4.Text = Session["cname"].ToString();
                string dl = "select* from ProductTab where Pro_Status='Available' and Cat_Id='"+Session["cid"]+"'";
                DataTable dt = ob.Fun_ExDataTable(dl);
                DataList1.DataSource = dt;
                DataList1.DataBind();
            }
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            string sel = "select * from ProductTab where Pro_Id=" + getid + "";
            Session["pid"] = getid; //product ID
            Response.Redirect("ViewOneProduct.aspx");
        }
    }
}