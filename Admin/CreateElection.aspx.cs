using System;
using System.Collections.Generic;

using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Temp
{
    public partial class a1 : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Updated\App_Data\Database1.mdf;Integrated Security=True");
        protected void Page_Load(object sender, EventArgs e)
        {

            if (conn.State == System.Data.ConnectionState.Open)
            {
                conn.Close();
            }
            conn.Open();
            if (IsPostBack) return;

            SqlCommand cmd = conn.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "select fname + lname as fullname from AddCandidate where electiontitle IS NULL";
            DataTable dt = new DataTable();
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            da.Fill(dt);


            DropDownList1.DataSource = dt;
            DropDownList1.DataTextField = "fullname" ;
          
            DropDownList1.DataBind();

            DropDownList2.DataSource = dt;
            DropDownList2.DataTextField = "fullname";
            DropDownList2.DataBind();

            DropDownList3.DataSource = dt;
            DropDownList3.DataTextField = "fullname" ;
            DropDownList3.DataBind();

            DropDownList4.DataSource = dt;
            DropDownList4.DataTextField = "fullname";
            DropDownList4.DataBind();


        }

        protected void submit(object sender, EventArgs e)
        {


            SqlCommand cmd = new SqlCommand("insert into [dbo].[CreateElection] values('" + TextBox1.Text + "' , '" + TextBox2.Text + "' , '" + TextBox3.Text + "' , '" + TextBox4.Text + "' , '" + TextBox5.Text + "' , '" + DropDownList1.SelectedItem + "' , '" + DropDownList2.SelectedItem + "','" + DropDownList3.SelectedItem + "','" + DropDownList4.SelectedItem + "')", conn);
          
         

            SqlCommand cmd2 = new SqlCommand("update AddCandidate set electiontitle='" + TextBox1.Text + "' where fname + lname ='" + DropDownList1.SelectedItem.Value + "' ", conn);
            SqlCommand cmd3 = new SqlCommand("update AddCandidate set electiontitle='" + TextBox1.Text + "' where fname + lname ='" + DropDownList2.SelectedItem.Value + "' ", conn);
            SqlCommand cmd4 = new SqlCommand("update AddCandidate set electiontitle='" + TextBox1.Text + "' where fname + lname ='" + DropDownList3.SelectedItem.Value + "' ", conn);
            SqlCommand cmd5 = new SqlCommand("update AddCandidate set electiontitle='" + TextBox1.Text + "' where fname + lname ='" + DropDownList4.SelectedItem.Value + "' ", conn);

            
            cmd.ExecuteNonQuery();
            cmd2.ExecuteNonQuery();
            cmd3.ExecuteNonQuery();
            cmd4.ExecuteNonQuery();
            cmd5.ExecuteNonQuery();

            Session.Clear();
        }


    }
}