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
    public partial class Registerform : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnregister_Click(object sender, EventArgs e)
        {
           string constr = WebConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlConnection con = new SqlConnection(constr);
            try
            {
                con.Open();
                string querychecker = "select ID from Admin where ID='" + txtID.Text + "'";
                SqlDataAdapter da = new SqlDataAdapter(querychecker, con);
                DataTable dt = new DataTable();
                da.Fill(dt);
                con.Close();


                if (dt.Rows.Count ==1)
                {
                    Response.Write("<script>alert('Id Number is already exist!')</script>");
                }

                else
                {
                   
                    if (txtpassword.Text != txtrepassword.Text)
                    {
                        Response.Write("<script>alert('Password does not match!')</script>");
                    }
                    else
                    {
                        con.Open();
                        SqlCommand sqlcmd = new SqlCommand("insert into Admin(ID,Password,fname) values('" + txtID.Text + "','" + txtpassword.Text + "','" + txtname.Text + "');", con);
                        sqlcmd.ExecuteNonQuery();
                        
                        Session["ID"] = txtID.Text;
                        txtID.Text = "";
                        txtpassword.Text = "";
                        txtrepassword.Text = "";
                        Response.Write("<script>alert('Register Successfully!')</script>");
                        Response.Redirect("~/Dashboard.aspx");
                        Session.RemoveAll();
                    }
                }



            }
            catch (Exception ex)
            {
                Response.Write(ex.Message);
            }
        }
    }
}