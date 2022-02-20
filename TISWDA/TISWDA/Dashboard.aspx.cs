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
    public partial class Dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e) {
        
            SqlConnection sqlCon = new SqlConnection(ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString);

            SqlCommand totalcmd = new SqlCommand("total", sqlCon);
            totalcmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader drtotal = totalcmd.ExecuteReader();
            drtotal.Read();
            lbltotal.Text = "" + drtotal["total"];
            sqlCon.Close();

            SqlCommand n1cmd = new SqlCommand("n1", sqlCon);
            n1cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr1 = n1cmd.ExecuteReader();
            dr1.Read();
            no1.Text = "" + dr1["count"];
            sqlCon.Close();

            SqlCommand n2cmd = new SqlCommand("n2", sqlCon);
            n2cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr2 = n2cmd.ExecuteReader();
            dr2.Read();
            no2.Text = "" + dr2["count2"];
            sqlCon.Close();


            SqlCommand n3cmd = new SqlCommand("n3", sqlCon);
            n3cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr3 = n3cmd.ExecuteReader();
            dr3.Read();
            no3.Text = "" + dr3["count3"];
            sqlCon.Close();

            SqlCommand n4cmd = new SqlCommand("n4", sqlCon);
            n4cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr4 = n4cmd.ExecuteReader();
            dr4.Read();
            no4.Text = "" + dr4["count4"];
            sqlCon.Close();

            SqlCommand n5cmd = new SqlCommand("n5", sqlCon);
            n5cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr5 = n5cmd.ExecuteReader();
            dr5.Read();
            no5.Text = "" + dr5["count5"];
            sqlCon.Close();

            SqlCommand n6cmd = new SqlCommand("n6", sqlCon);
            n6cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr6 = n6cmd.ExecuteReader();
            dr6.Read();
            no6.Text = "" + dr6["count6"];
            sqlCon.Close();

            SqlCommand n7cmd = new SqlCommand("n7", sqlCon);
            n7cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr7 = n7cmd.ExecuteReader();
            dr7.Read();
            no7.Text = "" + dr7["count7"];
            sqlCon.Close();

            SqlCommand n8cmd = new SqlCommand("n8", sqlCon);
            n8cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr8 = n8cmd.ExecuteReader();
            dr8.Read();
            no8.Text = "" + dr8["count8"];
            sqlCon.Close();

            SqlCommand n9cmd = new SqlCommand("n9", sqlCon);
            n9cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr9 = n9cmd.ExecuteReader();
            dr9.Read();
            no9.Text = "" + dr9["count9"];
            sqlCon.Close();

            SqlCommand n10cmd = new SqlCommand("n10", sqlCon);
            n10cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr10 = n10cmd.ExecuteReader();
            dr10.Read();
            no10.Text = "" + dr10["count10"];
            sqlCon.Close();

            SqlCommand n11cmd = new SqlCommand("n11", sqlCon);
            n11cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr11 = n11cmd.ExecuteReader();
            dr11.Read();
            no11.Text = "" + dr11["count11"];
            sqlCon.Close();

            SqlCommand n12cmd = new SqlCommand("n12", sqlCon);
            n12cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr12 = n12cmd.ExecuteReader();
            dr12.Read();
            no12.Text = "" + dr12["count12"];
            sqlCon.Close();

            SqlCommand n13cmd = new SqlCommand("n13", sqlCon);
            n13cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr13 = n13cmd.ExecuteReader();
            dr13.Read();
            no13.Text = "" + dr13["count13"];
            sqlCon.Close();

            SqlCommand n14cmd = new SqlCommand("n14", sqlCon);
            n14cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr14 = n14cmd.ExecuteReader();
            dr14.Read();
            no14.Text = "" + dr14["count14"];
            sqlCon.Close();

            SqlCommand n15cmd = new SqlCommand("n15", sqlCon);
            n15cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr15 = n15cmd.ExecuteReader();
            dr15.Read();
            no15.Text = "" + dr15["count15"];
            sqlCon.Close();

            SqlCommand n01cmd = new SqlCommand("n01", sqlCon);
            n01cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr01 = n01cmd.ExecuteReader();
            dr01.Read();
            no01.Text = "" + dr01["count01"];
            sqlCon.Close();
            SqlCommand n02cmd = new SqlCommand("n02", sqlCon);
            n02cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr02 = n02cmd.ExecuteReader();
            dr02.Read();
            no02.Text = "" + dr02["count02"];
            sqlCon.Close();
            SqlCommand n03cmd = new SqlCommand("n03", sqlCon);
            n03cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr03 = n03cmd.ExecuteReader();
            dr03.Read();
            no03.Text = "" + dr03["count03"];
            sqlCon.Close();
            SqlCommand n04cmd = new SqlCommand("n04", sqlCon);
            n04cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr04 = n04cmd.ExecuteReader();
            dr04.Read();
            no04.Text = "" + dr04["count04"];
            sqlCon.Close();
            SqlCommand n05cmd = new SqlCommand("n05", sqlCon);
            n05cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr05 = n05cmd.ExecuteReader();
            dr05.Read();
            no05.Text = "" + dr05["count05"];
            sqlCon.Close();
            SqlCommand n06cmd = new SqlCommand("n06", sqlCon);
            n06cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr06 = n06cmd.ExecuteReader();
            dr06.Read();
            no06.Text = "" + dr06["count06"];
            sqlCon.Close();
            SqlCommand n07cmd = new SqlCommand("n07", sqlCon);
            n07cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr07 = n07cmd.ExecuteReader();
            dr07.Read();
            no07.Text = "" + dr07["count07"];
            sqlCon.Close();
            SqlCommand n08cmd = new SqlCommand("n08", sqlCon);
            n08cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr08 = n08cmd.ExecuteReader();
            dr08.Read();
            no08.Text = "" + dr08["count08"];
            sqlCon.Close();
            SqlCommand n09cmd = new SqlCommand("n09", sqlCon);
            n09cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr09 = n09cmd.ExecuteReader();
            dr09.Read();
            no09.Text = "" + dr09["count09"];
            sqlCon.Close();
            SqlCommand n010cmd = new SqlCommand("n010", sqlCon);
            n010cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr010 = n010cmd.ExecuteReader();
            dr010.Read();
            no010.Text = "" + dr010["count010"];
            sqlCon.Close();
            SqlCommand n011cmd = new SqlCommand("n011", sqlCon);
            n011cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr011 = n011cmd.ExecuteReader();
            dr011.Read();
            no011.Text = "" + dr011["count011"];
            sqlCon.Close();
            SqlCommand n012cmd = new SqlCommand("n012", sqlCon);
            n012cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr012 = n012cmd.ExecuteReader();
            dr012.Read();
            no012.Text = "" + dr012["count012"];
            sqlCon.Close();
            SqlCommand n013cmd = new SqlCommand("n013", sqlCon);
            n013cmd.CommandType = System.Data.CommandType.StoredProcedure;
            sqlCon.Open();
            SqlDataReader dr013 = n013cmd.ExecuteReader();
            dr013.Read();
            no013.Text = "" + dr013["count013"];
            sqlCon.Close();

            biendCahrt();
        }

        void biendCahrt()
        {
            DataTable dt = new DataTable();
            StringBuilder str = new StringBuilder();
            try
            {
                dt=this.SelectData();
                str.Append(@"
<script Type = 'text/javascript'>
google.load('current','1',{packages :['corechart','line']});
</script>
<script Type = 'text/javascript'>
function drawchart(){
var data = new google.visiualization.DataTable();
data.addColumn('string','Barangay_districts')
data.addColumn('number','Employment')
data.addColumn('number','p05')
data.addColumn('number','p012')
data.addRows([");
                int count = dt.Rows.Count - 1;
                for(int i=0; i <= count; i++)
                {
                    if (count == i)
                    {
                        str.Append("['" + dt.Rows[i]["Barangay_districts"].ToString() + "','" + dt.Rows[i]["Employment"].ToString() + "','" + dt.Rows[i]["p05"].ToString() + "','" + dt.Rows[i]["p012"].ToString()+"]]);");
                    }
                    else
                    {
                        str.Append("['" + dt.Rows[i]["Barangay_districts"].ToString() + "','" + dt.Rows[i]["Employment"].ToString() + "','" + dt.Rows[i]["p05"].ToString() + "','" + dt.Rows[i]["p012"].ToString() + "],");
                    }
                }
                str.Append("var option = {title : 'Difficulties', vAxis :{title : 'Population Number'},hAxis : {title : 'Barangay'}, pointsVisible: true};");
                str.Append("var chart = new google.visualization.lineChart(document.getElementById('chart_div')); chart.draw(data,option);}");
                str.Append(@" google.charts.setOnLoadCallback(drawchart);");
                str.Append("</script>");
                lt.Text = str.ToString();
            }
            catch { }
        }
        private DataTable SelectData()
        {
            DataTable dt = this.GetData("SELECT [Barangay_Districts],[Employment],[p05],[p012] FROM[TaguigSurveySystem].[dbo].[Barangay]");
            return dt;
        }
        private DataTable GetData(string Query)
        {
            string constring = ConfigurationManager.ConnectionStrings["dbconnection"].ConnectionString;
            SqlCommand cmd = new SqlCommand(Query);
            using (SqlConnection con = new SqlConnection(constring))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt= new DataTable())
                    {
                        sda.Fill(dt);
                        return dt;

                    }
                }
            }
        }
       
    }
}


