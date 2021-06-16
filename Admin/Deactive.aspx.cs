using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;

namespace Admin
{
    public partial class Deactive : System.Web.UI.Page
    {
        static string s = ConfigurationManager.ConnectionStrings["Database1"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {


            SqlConnection con = new SqlConnection(s);
            int id;
            if (con.State == ConnectionState.Open)
            {
                con.Close();
            }
            con.Open();

            id = Convert.ToInt32(Request.QueryString["id"].ToString());

            SqlCommand cmd = con.CreateCommand();
            cmd.CommandType = CommandType.Text;
            cmd.CommandText = "update Registration set approved='No' where id=" + id + "";
            cmd.ExecuteNonQuery();

            Response.Redirect("~/Admin/ViewVoter.aspx");
        }
    }
}