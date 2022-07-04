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
    public partial class SignUp : System.Web.UI.Page
    {
        //Hashing hash = new Hashing();
        string strcon = ConfigurationManager.ConnectionStrings["ACS"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        //private void Hashing()
        //{
        //    var hashPassword = HashingPass.Encrypt(PasswordId.Value);
        //}

        private void InsertUser()
        {
            //Hashing();
            SqlConnection con = null;
            try
            {
                using (con = new SqlConnection(strcon))
                {
                    con.Open();
                    SqlCommand com = new SqlCommand("ACSSP", con);
                    com.CommandType = CommandType.StoredProcedure;
                    com.Parameters.AddWithValue("@Flag", "SignIn");
                    com.Parameters.AddWithValue("@Name", NameId.Value);
                    com.Parameters.AddWithValue("@U_email", EmailId.Value);
                    com.Parameters.AddWithValue("@U_pass", HashingPass.Encrypt(PasswordId.Value));
                    int check = com.ExecuteNonQuery();
                    if(check>0)
                    {
                        Response.Write("<script>alert('Successfully inserted')</script>");
                    }
                    else
                    {
                        Response.Write("<script>alert('Error')</script>");
                    }

                }
            }
            catch(Exception ex)
            {
                Response.Write("<script>alert('"+ex.Message+"')</script>");
            }
            finally
            {
                con.Close();
            }
        }

        protected void SignBtn_Click(object sender, EventArgs e)
        {
            //Hashing();
            InsertUser();
        }
    }
}