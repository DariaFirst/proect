using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace RielDon
{
    public partial class Dealing : System.Web.UI.Page
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
            string query = "INSERT INTO [dealing] ([owner], [buyer], [realtor], [building], [price], [expenses], [cost], [date]) " +
                "VALUES (@owner, @buyer, @realtor,@building,@price,@expenses,@cost,@date);";
            OleDbCommand command = new OleDbCommand(query, MyConnection);

            command.Parameters.AddWithValue("@owner", DropDownList1.SelectedValue);
            command.Parameters.AddWithValue("@buyer", DropDownList2.SelectedValue);
            command.Parameters.AddWithValue("@realtor", DropDownList3.SelectedValue);
            command.Parameters.AddWithValue("@building", DropDownList4.SelectedValue);
            command.Parameters.AddWithValue("@price", TextBox3.Text);
            command.Parameters.AddWithValue("@expenses", TextBox2.Text);
            command.Parameters.AddWithValue("@cost", TextBox4.Text);
            command.Parameters.AddWithValue("@date", TextBox5.Text);


            command.ExecuteNonQuery();
            MyConnection.Close();
            GridView1.DataBind();
            GridView2.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            int price = Convert.ToInt32(TextBox3.Text);
            int nasenka = Convert.ToInt32(TextBox2.Text);
            TextBox4.Text =Convert.ToString(price+((price / 100) * nasenka));
            Button1.Enabled = true;
        }
    }
}
