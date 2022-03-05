using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace RielDon
{
    public partial class Realtor : System.Web.UI.Page
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
            string query = "INSERT INTO [realtor] ([fio], [phone], [dateemployment], [datedismissal]) VALUES (@fio, @phone, @dateemployment, @datedismissal);";
            OleDbCommand command = new OleDbCommand(query, MyConnection);

            command.Parameters.AddWithValue("@fio", TextBox1.Text);
            command.Parameters.AddWithValue("@phone", TextBox3.Text);
            command.Parameters.AddWithValue("@dateemployment", TextBox2.Text);
            command.Parameters.AddWithValue("@datedismissal", TextBox4.Text);


            command.ExecuteNonQuery();
            MyConnection.Close();
            GridView1.DataBind();
        }
    }
}
