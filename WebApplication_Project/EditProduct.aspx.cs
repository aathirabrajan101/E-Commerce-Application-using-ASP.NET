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
    public partial class EditProduct : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        public void Grid()
        {
            string str = "select * from ProductTab";
            DataSet ds = ob.Fun_ExAdapter(str);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Grid();
            }
        }

        protected void LinkButton1_Command(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            string sel = "select * from ProductTab where Pro_Id=" + getid + "";
            Session["pid"] = getid;
            SqlDataReader dr = ob.Fun_ExReader(sel);
            while (dr.Read())
            {
                Panel1.Visible = true;
                tbname.Text = dr["Pro_Name"].ToString();
                tbdesc.Text = dr["Pro_Description"].ToString();
                Image1.ImageUrl = dr["Pro_Image"].ToString();
                tbprice.Text = dr["Pro_Price"].ToString();
                tbstock.Text = dr["Pro_Stock"].ToString();             
                HfProImage.Value = dr["Pro_Image"].ToString();
                RadioButtonList1.SelectedValue= dr["Pro_Status"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pic;
            if (FileUpload1.HasFile)// checking if user selected new file or not
            {
                pic = "~/ProductImages/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(pic));
            }
            else
            {
                pic = HfProImage.Value; //to keep the old file when no file chosen while editing
            }         
            int getid = Convert.ToInt32(Session["pid"]);

            string upd = "update ProductTab set Pro_Name='" + tbname.Text + "',Pro_Image='" + pic + "',Pro_Price=" + tbprice.Text + ",Pro_description='" + tbdesc.Text + "',Pro_Stock=" + tbstock.Text + ",Pro_Status='" + RadioButtonList1.SelectedItem.Text + "' where Pro_Id='"+getid+"'";
            int up = ob.Fun_ExNonQuer(upd);
            if (up == 1)
            {
                Label1.Visible = true;               
                Label1.Text = "Updated";
                Grid();
            }
        }
    }
}