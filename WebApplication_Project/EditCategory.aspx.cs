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
    public partial class EditCategory : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();

        public void Grid()
        {
            string str = "select * from CategoryTab";
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

        protected void LinkButton1_Command1(object sender, CommandEventArgs e)
        {
            int getid = Convert.ToInt32(e.CommandArgument);
            string sel = "select * from CategoryTab where Cat_Id=" + getid + "";
            Session["cid"] = getid;
            SqlDataReader dr = ob.Fun_ExReader(sel);
            while (dr.Read())
            {
                Panel1.Visible = true;
                tbname.Text = dr["Cat_Name"].ToString();
                tbdesc.Text = dr["Cat_Description"].ToString();
                Image1.ImageUrl = dr["Cat_Image"].ToString();
                HFCatImage.Value = dr["Cat_Image"].ToString();
                RadioButtonList1.SelectedValue = dr["Cat_Status"].ToString();

            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pic;
            if (FileUpload1.HasFile)// checking if user selected new file or not
            {
                pic = "~/CategoryImages/" + FileUpload1.FileName;
                FileUpload1.SaveAs(MapPath(pic));
            }
            else
            {
                pic = HFCatImage.Value; //to keep the old file when no file chosen while editing
            }
            
            int getid = Convert.ToInt32(Session["cid"]);
          
            string upd = "update CategoryTab set Cat_Name='" + tbname.Text + "',Cat_Description='" + tbdesc.Text + "',Cat_Image='" + pic + "',Cat_Status='" + RadioButtonList1.SelectedItem.Text + "' where Cat_Id='"+getid+"'" ;
            int up = ob.Fun_ExNonQuer(upd);
            if (up ==1)
            {
                Label1.Visible = true;
                Label1.Text = "Updated";
                Grid();
            }
        }

       
    }
}