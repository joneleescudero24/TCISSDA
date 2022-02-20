using System;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Text;
using System.Collections.Generic;
using System.Web.Script.Services;
using System.Linq;
using System.Web.Services;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace TISWDA
{
    public partial class EditInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
          if (!IsPostBack)
            {
                gvData.DataSource = SqlDataSource1;
                gvData.DataBind();
            }
        }
       

        protected void gvData_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvData.EditIndex = e.NewEditIndex;
            gvData.DataSource = SqlDataSource1;
            gvData.DataBind();
            Label26.Text = "";
            gvData.EditRowStyle.BackColor = System.Drawing.Color.IndianRed;
        }

        protected void gvData_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvData.EditIndex = -1;
            gvData.DataSource = SqlDataSource1;
            gvData.DataBind();
            Label26.Text = "";

        }

        protected void gvData_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            Label Barangay_id = gvData.Rows[e.RowIndex].FindControl("Label25") as Label;
            TextBox Barangay_Districts = gvData.Rows[e.RowIndex].FindControl("TextBox1") as TextBox;
            TextBox Unemployed = gvData.Rows[e.RowIndex].FindControl("TextBox2") as TextBox;
            TextBox p01 = gvData.Rows[e.RowIndex].FindControl("TextBox3") as TextBox;
            TextBox p02 = gvData.Rows[e.RowIndex].FindControl("TextBox4") as TextBox;
            TextBox p03 = gvData.Rows[e.RowIndex].FindControl("TextBox5") as TextBox;
            TextBox p04 = gvData.Rows[e.RowIndex].FindControl("TextBox6") as TextBox;
            TextBox p05 = gvData.Rows[e.RowIndex].FindControl("TextBox7") as TextBox;
            TextBox p06 = gvData.Rows[e.RowIndex].FindControl("TextBox8") as TextBox;
            TextBox p07 = gvData.Rows[e.RowIndex].FindControl("TextBox9") as TextBox;
            TextBox p08 = gvData.Rows[e.RowIndex].FindControl("TextBox10") as TextBox;
            TextBox p09 = gvData.Rows[e.RowIndex].FindControl("TextBox11") as TextBox;
            TextBox p010 = gvData.Rows[e.RowIndex].FindControl("TextBox12") as TextBox;
            TextBox p011 = gvData.Rows[e.RowIndex].FindControl("TextBox13") as TextBox;
            TextBox p012 = gvData.Rows[e.RowIndex].FindControl("TextBox14") as TextBox;
            TextBox p013 = gvData.Rows[e.RowIndex].FindControl("TextBox15") as TextBox;
            TextBox p013a = gvData.Rows[e.RowIndex].FindControl("TextBox16") as TextBox;
            TextBox p013b = gvData.Rows[e.RowIndex].FindControl("TextBox17") as TextBox;
            TextBox p013c = gvData.Rows[e.RowIndex].FindControl("TextBox18") as TextBox;
            TextBox p013d = gvData.Rows[e.RowIndex].FindControl("TextBox19") as TextBox;
            TextBox p013e = gvData.Rows[e.RowIndex].FindControl("TextBox20") as TextBox;
            TextBox p013f = gvData.Rows[e.RowIndex].FindControl("TextBox21") as TextBox;
            TextBox p014 = gvData.Rows[e.RowIndex].FindControl("TextBox22") as TextBox;
            TextBox p016 = gvData.Rows[e.RowIndex].FindControl("TextBox23") as TextBox;
            TextBox p016course = gvData.Rows[e.RowIndex].FindControl("TextBox24") as TextBox;
            String mycon = "Data Source=DESKTOP-6JPSQBI\\SQLEXPRESS;Initial Catalog=TaguigSurveySystem;Integrated Security=True";
            String dt = "update Barangay set Barangay_Districts='" + Barangay_Districts.Text + "', Unemployed='" + Unemployed.Text + "', p01 ='" + p01.Text + "', p02 ='" + p02.Text + "', p03 ='" + p03.Text + "', p04 ='" + p04.Text + "', p05 ='" + p05.Text + "',p06='" + p06.Text + "', p07 ='" + p07.Text + "',p08='" + p08.Text + "', p09 ='" + p09.Text + "',p010='" + p010.Text + "', p011 ='" + p011.Text + "',p012='" + p012.Text + "', p013 ='" + p013.Text + "',p013a='" + p013a.Text + "', p013b ='" + p013b.Text + "',p013c='" + p013c.Text + "', p013d ='" + p013d.Text + "',p013e='" + p013e.Text + "', p013f ='" + p013f.Text + "',p014='" + p014.Text + "', p016 ='" + p016.Text + "',p016course='" + p016course.Text + "' where Barangay_id = '"+Barangay_id.Text+"'";
            SqlConnection con = new SqlConnection(mycon);
            con.Open();
            SqlCommand cmd = new SqlCommand();
            cmd.CommandText = dt;
            cmd.Connection = con;
            cmd.ExecuteNonQuery();
            con.Close();
            Label26.Text = "Data Row Has Been Updated Successfully!";
            SqlDataSource1.DataBind();
            gvData.EditIndex = -1;
            gvData.DataSource = SqlDataSource1;
            gvData.DataBind();
        }

       
    }
   

    }