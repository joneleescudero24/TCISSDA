using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace TISWDA
{
    public partial class Loginform : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnlogin_Click(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

            con.Open();
            string checkid = "select count(1) from Admin where ID ='" + txtID.Text.Trim() + "'";
            SqlCommand usercmd = new SqlCommand(checkid, con);
            int count = Convert.ToInt32(usercmd.ExecuteScalar().ToString());
            con.Close();
            if (count == 1)
            {
                con.Open();
                string checkpass = "select password from Admin Where  ID ='" + txtID.Text.Trim() + "'";
                SqlCommand passcmd = new SqlCommand(checkpass, con);
                string password = passcmd.ExecuteScalar().ToString().Replace(" ","");
                if (password == txtpassword.Text)
                {
                    Session["ID"] = txtID.Text.Trim();
                    Response.Redirect("~/Dashboard.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Incorrect Password. Please try again!');</script>");
                }

            }
            else
            {
                Response.Write("<script>alert('Incorrect Id. Please try again!');</script>");
            }
        }
    }




    }
    
