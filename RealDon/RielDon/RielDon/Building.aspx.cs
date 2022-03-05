using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace RielDon
{
    public partial class Building : System.Web.UI.Page
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
            string query = "INSERT INTO [building] ([address], [owner], [region], [objecttype], [compactness], [square], [floor], [price],[status],[description]) VALUES (@address, @owner, @region, @objecttype, @compactness, @square, @floor, @price, @status, @description);";
            OleDbCommand command = new OleDbCommand(query, MyConnection);

            command.Parameters.AddWithValue("@address", TextBox1.Text);
            command.Parameters.AddWithValue("@owner", DropDownList4.SelectedValue);
            command.Parameters.AddWithValue("@region", DropDownList2.SelectedValue);
            command.Parameters.AddWithValue("@objecttype", DropDownList3.SelectedValue);
            command.Parameters.AddWithValue("@compactness", DropDownList5.SelectedValue);
            command.Parameters.AddWithValue("@square", Convert.ToInt32(TextBox2.Text));
            command.Parameters.AddWithValue("@floor", Convert.ToInt32(TextBox5.Text));
            command.Parameters.AddWithValue("@price", Convert.ToInt32(TextBox3.Text));
            command.Parameters.AddWithValue("@status", DropDownList6.SelectedValue);
            command.Parameters.AddWithValue("@description", TextBox4.Text);

            command.ExecuteNonQuery();
            MyConnection.Close();
            GridView1.DataBind();
            GridView2.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
