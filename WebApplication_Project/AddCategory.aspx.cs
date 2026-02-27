using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Project
{
    public partial class AddCategory : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string pic = "~/CategoryImages/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(pic));
           

            string ins = "insert into CategoryTab values('" + tbname.Text + "','" + tbdesc.Text + "','" + pic + "','Available')";
            int i = ob.Fun_ExNonQuer(ins);
            if (i == 1)
            {
                Label4.Visible = true;
                Label4.Text = "Category Details Added";
            }
            
        }
    }
}