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
    public partial class ViewInformation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindGvData();
            BindChart();
        }
        private void BindGvData()
        {
            gvData.DataSource = GetChartData();
            gvData.DataBind();
       
        }
        private void BindChart()
        {
            DataTable dsChartData = new DataTable();

        }
            private DataTable GetChartData()
        {
            DataSet dsData = new DataSet();
            try
            {
                SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);
                SqlDataAdapter sqlCmd = new SqlDataAdapter("Get_all", sqlCon);
                sqlCmd.SelectCommand.CommandType = CommandType.StoredProcedure;

                sqlCon.Open();

                sqlCmd.Fill(dsData);
               
                sqlCon.Close();
             
            }
            catch
            {
                throw;
            }
            return dsData.Tables[0];
        }
    }
}