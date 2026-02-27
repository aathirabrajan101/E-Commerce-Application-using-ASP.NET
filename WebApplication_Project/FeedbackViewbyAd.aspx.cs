using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Net.Mail;
using System.Text;

namespace WebApplication_Project
{
    public partial class FeedbackViewbyAd : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Grid();
            }
        }    
        public void Grid()
        {
            string sel = "select * from FeedbackTab where Fb_Status=1";
            DataSet ds = ob.Fun_ExAdapter(sel);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }

        protected void LinkButton1_Command1(object sender, CommandEventArgs e)
        {
            Panel1.Visible = true;
            int fbid = Convert.ToInt32(e.CommandArgument);
            string sel = "select User_Id from Feedbacktab where Fb_Id=" + fbid + "";
            int userid = Convert.ToInt32(ob.Fun_ExScalar(sel));
            string selmail = "select User_Email from UserTab where User_Id=" + userid + "";
            string mail = ob.Fun_ExScalar(selmail).ToString();
            string selname = "select User_Name from UserTab where User_Id=" + userid + "";
            string name = ob.Fun_ExScalar(selname).ToString();
            Session["username"] = name;
            Session["mail"] = mail;
            Session["userid"] = userid;
            Session["fbid"] = fbid;
            Label2.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string username = Session["username"].ToString();
            string email = Session["mail"].ToString();
            string msg = TextBox1.Text;
            string up = "update FeedbackTab set Fb_Reply='" + TextBox1.Text + "', Fb_Status=0 where User_Id=" + Session["userid"] + " and Fb_Id=" + Session["fbid"] + "";
            int i = ob.Fun_ExNonQuer(up);
            if (i == 1)
            {
                Panel1.Visible = false;
                Label2.Visible = true;
                Grid();
                SendEmail2("Aathira","thisisroughmail200@gmail.com", "uwlj bubd xerv nqag", username, email,"Feedback Reply-ROYALWOODS",msg);
            }
        }
        public static void SendEmail2(string yourName, string yourGmailUserName, string yourGmailPassword, string toName, string toEmail, string subject, string body)

        {
            string to = toEmail; //To address    
            string from = yourGmailUserName; //From address    
            MailMessage message = new MailMessage(from, to);

            string mailbody = body;
            message.Subject = subject;
            message.Body = mailbody;
            message.BodyEncoding = Encoding.UTF8;
            message.IsBodyHtml = true;
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587); //Gmail smtp    
            System.Net.NetworkCredential basicCredential1 = new
            System.Net.NetworkCredential(yourGmailUserName, yourGmailPassword);
            client.EnableSsl = true;
            client.UseDefaultCredentials = true;
            client.Credentials = basicCredential1;
            try
            {
                client.Send(message);
            }

            catch (Exception ex)
            {
                throw ex;
            }
        }

    }
}