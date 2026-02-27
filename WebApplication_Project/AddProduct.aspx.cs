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
    public partial class AddProduct : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
           if (!IsPostBack)
            {
                string dd = "select Cat_Id, Cat_Name from CategoryTab";
                DataSet ds = ob.Fun_ExAdapter(dd);
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "Cat_Name";
                DropDownList2.DataValueField = "Cat_Id";               
                DropDownList2.DataBind();
                DropDownList2.Items.Insert(0, new ListItem("Select", "0"));
            }
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pic = "~/ProductImages/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(pic));

            string ins = "insert into ProductTab values("+DropDownList2.SelectedItem.Value + ",'" + tbname.Text + "','" + pic + "'," + Convert.ToInt32(tbprice.Text) + ",'" + tbdesc.Text + "'," + Convert.ToInt32(tbstock.Text) + ",'Available')";
            int i = ob.Fun_ExNonQuer(ins);
            if (i == 1)
            {
                Label8.Visible = true;
                Label8.Text = "Product Details Added";
            }

        }
    }
}