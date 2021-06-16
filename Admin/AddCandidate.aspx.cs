using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using System.IO;

namespace Temp
{
    public partial class AddCandidate : System.Web.UI.Page
    {
        SqlConnection conn = new SqlConnection(@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=D:\Updated\App_Data\Database1.mdf;Integrated Security=True");


        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        

        protected void Button2_Click(object sender, EventArgs e)
        {

            if (FileUpload1.HasFile)
            {
                string strname = FileUpload1.FileName.ToString();
                FileUpload1.PostedFile.SaveAs(Server.MapPath("/upload/") + strname);
                conn.Open();
                SqlCommand cmdd = new SqlCommand("insert into [dbo].[AddCandidate] values('" + TextBox1.Text + "' , '" + TextBox2.Text + "' , '" + DropDownList1.SelectedItem + "' , '" + TextBox3.Text + "' , '" + TextBox4.Text + "' , '" + TextBox5.Text + "','" + strname + "' ,  NULL, 0)", conn);
                
                cmdd.ExecuteNonQuery();
                conn.Close();

                   }
            }
            
        }
}

           
