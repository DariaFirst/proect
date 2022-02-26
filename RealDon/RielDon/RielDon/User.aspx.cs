using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace RielDon
{
    public partial class User : System.Web.UI.Page
    {
        public static string connectString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=C:/RielDonDB/RielDonDB.mdb";
        private OleDbConnection MyConnection;
        protected void Page_Load(object sender, EventArgs e)
        {
            MyConnection = new OleDbConnection(connectString);
        }


        protected void Button1_Click(object sender, EventArgs e)
        {
            MyConnection.Open();
            string query = "INSERT INTO [user] ([fio], [passport], [phone], [birthdate]) VALUES (@fio,@passport,@phone,@birthdate);";
            OleDbCommand command = new OleDbCommand(query, MyConnection);
            
            command.Parameters.AddWithValue("@fio", TextBox1.Text);
            command.Parameters.AddWithValue("@passport", TextBox2.Text);
            command.Parameters.AddWithValue("@phone", TextBox3.Text);
            command.Parameters.AddWithValue("@birthdate", TextBox4.Text);


            command.ExecuteNonQuery();
            MyConnection.Close();
            GridView1.DataBind();
        }
    }
}
