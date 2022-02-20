using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.IO;

namespace TISWDA
{
    public partial class Staff : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           

           

        }

        protected void button1_Click(object sender, EventArgs e)
        {
            string constring = "Data Source = DESKTOP-6JPSQBI\\SQLEXPRESS; Initial Catalog=TaguigSurveySystem; Integrated Security=True";
            SqlConnection sqlcon = new SqlConnection(constring);

            FileUpload1.SaveAs(Server.MapPath("~/Image/") + Path.GetFileName(FileUpload1.FileName));
            string link = "Image/" + Path.GetFileName(FileUpload1.FileName);

            string query = "insert into Staff (id,Fullname,Designated_area,Password,Image) values('" + id.Text + "','" + name.Text + "','" + designated.Text + "','" + pass.Text + "','" + link + "');";
                    SqlCommand cmd = new SqlCommand(query, sqlcon);
                    sqlcon.Open();
                    cmd.ExecuteNonQuery();
                    sqlcon.Close();
                    Label1.Text = "Data has been saved successfully!";
                    id.Text = "";
                    name.Text = "";
                    pass.Text = "";
            Response.Write("<script>alert('Register Successfully!')</script>");
            Response.Redirect("~/Staff.aspx");






        }
    }
}