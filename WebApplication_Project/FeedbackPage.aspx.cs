using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project //FEEDBACK PAGE
{
    public partial class FeedbackPage : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string today = DateTime.Now.ToString("yyyy-MM-dd"); //date insertion
            string ins = "insert into FeedbackTab values(" + Session["userid"] + ",'" + TextBox1.Text + "','',1,'" + today + "')";
            int i = ob.Fun_ExNonQuer(ins);
            if (i == 1)
            {
                Label3.Visible = true;
                Button2.Visible = true;
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("UserHomePage.aspx");
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("LogoutPage.aspx");
        }
    }
}