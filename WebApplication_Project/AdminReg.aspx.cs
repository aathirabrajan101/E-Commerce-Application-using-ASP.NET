using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project
{
    public partial class AdminReg : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sel = "select Max(Reg_Id) from LoginTab";
            string maxregid = ob.Fun_ExScalar(sel);
            int regid = 0;
            if (maxregid == "")
            {
                regid = 1;
            }
            else
            {
                int newregid = Convert.ToInt32(maxregid);
                regid = newregid + 1;
            }

            string ins = "Insert into AdminTab values(" + regid + ",'" + tbname.Text + "','" + tbmail.Text + "'," + tbphone.Text + ")";
            int i = ob.Fun_ExNonQuer(ins);
            if (i == 1)
            {
                string inslog = "insert into LoginTab values(" + regid + ",'"+tbuser.Text+"','"+tbpass.Text+"','Admin')";
                int j = ob.Fun_ExNonQuer(inslog);
                if (i == 1 && j == 1)
                {
                    lbdisplay.Visible = true;
                    lbdisplay.Text= "Successfully Registered";
                    btlog.Visible = true;
                   
                }
                else
                {
                    lbdisplay.Visible = true;
                    lbdisplay.Text = "Invalid Entry";
                }
            }
        }

        protected void btlog_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void tbuser_TextChanged(object sender, EventArgs e)
        {
            string z = "select count(Log_Id) from LoginTab where Username='" + tbuser.Text + "'";
            string count = ob.Fun_ExScalar(z);
            int cid = Convert.ToInt32(count);
            if (cid >= 1)
            {
                lbltxtchange.Visible = true;
                lbltxtchange.Text = "Username Already Exists";
            }
            else
            {
                lbltxtchange.Visible = false;
            }
        }
    }
}