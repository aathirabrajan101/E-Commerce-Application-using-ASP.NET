using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project
{
    public partial class Login : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = "select count(Reg_Id) from LoginTab where Username='" + tbusername.Text+ "' and Password='" + tbpass.Text + "'";
            string cid = ob.Fun_ExScalar(str);
            int cid1 = Convert.ToInt32(cid);
            if (cid1 == 1)
            {
                string str1 = "select Reg_Id from LoginTab where username='" + tbusername.Text + "' and Password='" + tbpass.Text + "'";
                string regid = ob.Fun_ExScalar(str1);
                Session["userid"] = regid;

                string str2 = "select Log_type from LoginTab where username='" + tbusername.Text + "' and Password='" + tbpass.Text + "'";
                string logtype = ob.Fun_ExScalar(str2);
                if (logtype == "Admin")
                {
                    Response.Redirect("AdminHomePage.aspx");
                }
                else if(logtype == "User")
                {
                    string seluserstat = "select User_status from UserTab where User_id=" + Session["userid"] + "";
                    string stat = ob.Fun_ExScalar(seluserstat);
                    if (stat == "Active")
                    {
                        Response.Redirect("UserHomePage.aspx");
                    }
                    else
                    {
                        lbldisp.Visible = true;
                        lbldisp.Text = "You are Blocked by the Admin";
                    }                                   
                }
                

            }
            else
            {
                lbldisp.Visible = true;
                lbldisp.Text = "Invalid Entry";
            }
        }
    }
}