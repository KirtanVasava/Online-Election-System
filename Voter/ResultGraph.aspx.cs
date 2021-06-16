using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.Web.UI.DataVisualization.Charting;

namespace Temp.Voter
{
    public partial class ResultGraph : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Updated\App_Data\Database1.mdf;Integrated Security=True");
        
        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
               // GetChartData();
                con.Close();
            }
            con.Open();

        }

       /* private void GetChartData()
        {
            string s = ConfigurationManager.ConnectionStrings["Database1.mdf"].ConnectionString;
            using(SqlConnection con = new SqlConnection(s))
            {
                SqlCommand cmd = new SqlCommand("Select fname, vote from AddCandidate", con);
                Series series = Chart1.Series["Series1"];
                con.Open();
                SqlDataReader rdr = cmd.ExecuteReader();
                while (rdr.Read())
                {
                    series.Points.AddXY( rdr["fname"].ToString(), rdr["vote"]);
                }
            }
            
        }

        private void GetChartType()
        {
            foreach(int chartType in Enum.GetValues(typeof(SeriesChartType)))
            {
                ListItem li = new ListItem(Enum.GetName(typeof(SeriesChartType), chartType), chartType.ToString());
                DropDownList2.Items.Add(li);
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {

        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            Chart1.Series["Series1"].ChartType = (SeriesChartType)Enum.Parse(typeof(SeriesChartType), DropDownList2.SelectedValue);
        }
    }*/
}