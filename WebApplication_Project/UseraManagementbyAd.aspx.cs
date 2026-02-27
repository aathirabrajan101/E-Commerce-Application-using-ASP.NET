using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication_Project //USER MANAGEMENT 
{
    public partial class UseraManagementbyAd : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Grid1();
                Grid2();
            }
        }
        public void Grid1()
        {
            string sel = "select * from UserTab where User_status='Active'";
            DataSet ds = ob.Fun_ExAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        public void Grid2()
        {
            string sel = "select * from UserTab where User_status='Inactive'";
            DataSet ds = ob.Fun_ExAdapter(sel);
            GridView2.DataSource = ds;
            GridView2.DataBind();
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e) //block
        {
            int userid = Convert.ToInt32(e.CommandArgument);
            string up = "update UserTab set User_status='Inactive' where user_id=" +userid+ "";
            ob.Fun_ExNonQuer(up);
            Grid1();
            Grid2();
        }

        protected void LinkButton2_Command(object sender, CommandEventArgs e) //unblock user
        {
            int userid = Convert.ToInt32(e.CommandArgument);
            string up = "update UserTab set User_status='Active' where user_id=" +userid + "";
            ob.Fun_ExNonQuer(up);
            Grid1();
            Grid2();
        }
    }
}