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


            //command.ExecuteNonQuery();
            MyConnection.Close();
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}
