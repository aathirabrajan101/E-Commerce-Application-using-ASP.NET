using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project
{
    public partial class UserReg : System.Web.UI.Page
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

            string ins = "Insert into UserTab values(" + regid + ",'" +tbname.Text+ "'," + tbage.Text+ ",'"+tbaddr.Text+"'," + tbphone.Text + ",'"+tbmail.Text+"',"+tbpin.Text+",'Active')";
            int i = ob.Fun_ExNonQuer(ins);
            if (i == 1)
            {
                string inslog = "insert into LoginTab values(" + regid + ",'" +tbuser.Text+ "','" + tbpass.Text+ "','User')";
                int j = ob.Fun_ExNonQuer(inslog);
                if (i == 1 && j == 1)
                {
                    lbldisplay.Visible = true;
                    lbldisplay.Text = "Successfully Registered";
                    btlog.Visible = true;

                }
                else
                {
                    lbldisplay.Visible = true;
                    lbldisplay.Text = "Invalid Entry";
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
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