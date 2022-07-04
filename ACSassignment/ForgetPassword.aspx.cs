using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

namespace ACSassignment
{
    public partial class ForgetPassword : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["ACS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Send_Click(object sender, EventArgs e)
        {
            ChangePassword();
        }

        private void ChangePassword()
        {
            SqlConnection con = null;
            try
            {
                using (con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand com = new SqlCommand("ACSSP", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@Flag", "ChangePw");
                    //com.Parameters.AddWithValue("@U_email", .Value);
                    com.Parameters.AddWithValue("@U_pass", Spassword.Value);
                    //SqlDataReader dr = com.ExecuteReader();
                    //if (dr.HasRows)
                    //{
                    //    Response.Write("<script>alert('Login success.')</script>");
                    //    Session["user"] = 0;
                    //    Response.Redirect("Home.aspx");
                    //}
                    //else
                    //{
                    //    Response.Write("<script>alert('Invalid.')</script>");
                    //}
                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
            finally
            {

            }
        }
    }
}