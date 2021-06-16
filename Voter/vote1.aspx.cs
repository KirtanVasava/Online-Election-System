using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Voter
{
    public partial class vote1 : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Updated\App_Data\Database1.mdf;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (con.State == System.Data.ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();
            string str = Request.QueryString["str"];

          /*  SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select fname + lname as fullname from AddCandidate where electiontitle='" + str + "'";
            cmd.ExecuteNonQuery();
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);


            RadioButtonList1.DataSource = dt;
            RadioButtonList1.DataTextField = "fullname";
            RadioButtonList1.DataBind();*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string str = RadioButtonList1.SelectedItem.Text;
            //Response.Write("<script>alert('Error :" + str + "');</script>");
            SqlCommand cmd4 = con.CreateCommand();
            cmd4.CommandType = CommandType.Text;
            cmd4.CommandText = "update AddCandidate set vote = vote + 1 where fname + lname ='" + str + "'";
            cmd4.ExecuteNonQuery();

        }
    }
}