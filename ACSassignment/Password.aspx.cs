using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

namespace ACSassignment
{
    public partial class Password : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ACS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void SendBtn_Click(object sender, EventArgs e)
        {
            if (CheckUser())
            {
                SendMail();
            }
            
        }

        private bool CheckUser()
        {
            SqlConnection con = null;
            try
            {
                using (con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand com = new SqlCommand("ACSSP", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@Flag", "CheckUser");
                    com.Parameters.AddWithValue("@U_email", email.Value);
                    SqlDataReader dr = com.ExecuteReader();
                    if (dr.HasRows)
                    {
                        return true;
                    }
                    else
                    {
                        Response.Write("<script>alert('No user found of such mail.')</script>");
                        return false;
                    }                 
                }

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
                return false;
            }
            finally
            {
                con.Close();
            }
        }

        private void SendMail()
        {
            try
            {
                using (MailMessage mail = new MailMessage())
                {
                    mail.From = new MailAddress("randomrandomran123@gmail.com");
                    mail.To.Add(email.Value);
                    mail.Subject = "test";
                    mail.Body = "<a href='ForgetPassword.aspx'>Click Here.</a>";
                    mail.IsBodyHtml = true;

                    using (SmtpClient smtp = new SmtpClient("smtp.gmail.com", 587))
                    {
                        smtp.Credentials = new System.Net.NetworkCredential("randomrandomran123@gmail.com", "bhhywjyzhnsfqwgk");
                        smtp.EnableSsl = true;
                        smtp.Send(mail);
                        Response.Write("<script>alert('Mail sent.')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "')</script>");
            }
        }
    }
}