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
    public partial class PayPage : System.Web.UI.Page
    {
        ConnectionClass ob = new ConnectionClass();
        protected void Page_Load(object sender, EventArgs e)
        {
            string sel = "select count(Acc_Id) from accounttab where User_Id=" + Session["userid"] + "";
            string i = ob.Fun_ExScalar(sel).ToString();
            if (i == "0")
            {
                Button1.Enabled = true;
            }
            else
            {
                Button1.Enabled = false;
            }
            Label9.Text = Session["grandtotal"].ToString();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Panel1.Visible = true;
        }

        protected void tbaccnum_TextChanged(object sender, EventArgs e)
        {
            string selacc = "select count(Acc_Id) from accounttab where Acc_Number=" + tbaccnum.Text + "";
            int cid = Convert.ToInt32(ob.Fun_ExScalar(selacc));
            if (cid >= 1)
            {
                Label3.Visible = true;
            }
            else
            {
                Label3.Visible = false;
            }
           
        }

        protected void Button2_Click(object sender, EventArgs e)//insert
        {
            string ins = "insert into AccountTab values (" + Session["userid"] + ",'" + tbname.Text + "'," + tbaccnum.Text + "," + tbaccbal.Text + ")";
            int i = ob.Fun_ExNonQuer(ins);
            if (i == 1)
            {
                Label2.Visible = true;
                Button1.Enabled = false;
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Panel2.Visible = true;
            string sel2 = "select * from AccountTab where User_Id=" + Session["userid"] + "";
            SqlDataReader dr = ob.Fun_ExReader(sel2);
            while (dr.Read())
            {
                Label4.Text = dr["Acc_Name"].ToString();
                Label5.Text= dr["Acc_Number"].ToString();
                tbnewaccbal.Text = dr["Acc_Balance"].ToString();
            }
        }

        protected void Button4_Click(object sender, EventArgs e) //update amount
        {
            string up = "update Accounttab set Acc_Balance=" + tbnewaccbal.Text + " where User_Id="+Session["userid"]+"";
            int u = ob.Fun_ExNonQuer(up);
            if (u == 1)
            {
                Label6.Visible = true;
            }
        }

        protected void Button5_Click(object sender, EventArgs e) //pay button
        {
            string sel3 = "select count(Acc_Id) from accounttab where Acc_Number=" + TextBox1.Text + " and User_Id=" + Session["userid"] + "";
            string cid = ob.Fun_ExScalar(sel3).ToString();
            if (cid == "1")
            {
                ServiceReference1.ServiceClient obj = new ServiceReference1.ServiceClient();
                int bal = obj.GetBal(Convert.ToInt32(TextBox1.Text));
                int paidamount = Convert.ToInt32(Session["grandtotal"]);
                int newbal = bal - paidamount;
                int uid = Convert.ToInt32(Session["userid"]);
                int i = obj.DoPayment(Convert.ToInt32(TextBox1.Text),uid,newbal);
                if (i == 1)//payment done and acc balance updated
                {
                    string sel = "select Pro_Id from OrderTab where User_Id=" + Session["userid"] + " and Order_status='Ordered'";
                    SqlDataReader dr = ob.Fun_ExReader(sel);
                    List<int> pdtlist = new List<int>();
                    while (dr.Read())
                    {
                        pdtlist.Add(Convert.ToInt32(dr["Pro_Id"]));
                    } 
                    foreach (int pid in pdtlist) //updating product stock and order status
                    {
                        string selquant = "select Order_quantity from ordertab where User_Id=" + Session["userid"] + " and Order_status='Ordered' and Pro_Id=" + pid + "";
                        int quant = Convert.ToInt32(ob.Fun_ExScalar(selquant));
                        string selstock = "select Pro_stock from Producttab where Pro_Id=" + pid + "";
                        int stock= Convert.ToInt32(ob.Fun_ExScalar(selstock));
                        int balstock = stock - quant;
                        string upstock = "update ProductTab set Pro_Stock=" + balstock + " where Pro_Id=" + pid + "";
                        int up1 = ob.Fun_ExNonQuer(upstock);
                        string uporder = "update OrderTab set order_status='paid'where User_Id=" + Session["userid"] + " and Order_status='Ordered'";
                        int up2 = ob.Fun_ExNonQuer(uporder);
                        if (up1 == 1 && up2 == 1)
                        {
                            string upbillstat = "update Billtab set Bill_Status=0 where User_Id= " + Session["userid"] + " and Bill_Status=1";
                            int b = ob.Fun_ExNonQuer(upbillstat);
                            if (b == 1)
                            {
                                Label11.Visible = true;
                                Label11.Text = "Payment Successfull";
                                Button6.Visible = true; //feedback button
                                Button5.Enabled = false; //pay button disabled after payment
                            }
                            else
                            {
                                Label11.Visible = true;
                                Label11.Text = "Payment Unsuccessful";
                            }
                        }

                    }
                }
            }
            else
            {
                Label11.Visible = true;
                Label11.Text = "Account Doesn't exist.Register Account.";
                Button1.Enabled = true;
            }

        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            Response.Redirect("FeedbackPage.aspx");
        }
    }
}