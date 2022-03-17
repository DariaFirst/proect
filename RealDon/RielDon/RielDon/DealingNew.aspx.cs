using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace RielDon
{
    public partial class DealingNew : System.Web.UI.Page
    {
        public static String qwerty;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = qwerty;
            GridView1.DataSourceID = SqlDataSource1.ID;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string dataot = TextBox1.Text;
            string datado = TextBox2.Text;
            if ((dataot!="") && (datado!="")) {
                qwerty = "SELECT * FROM dealingZ WHERE (date>=#" + dataot + "#) AND (date<=#" + datado + "#);";
                SqlDataSource1.SelectCommand = qwerty;
                GridView1.DataSourceID = SqlDataSource1.ID;
                GridView1.DataBind();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string nm = TextBox3.Text;
            qwerty = "SELECT * FROM dealingZ WHERE [documents] lIKE( \'" + nm + "%\');";
            SqlDataSource1.SelectCommand = qwerty;
                GridView1.DataSourceID = SqlDataSource1.ID;
                GridView1.DataBind();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            qwerty = "SELECT * FROM dealingZ";
            SqlDataSource1.SelectCommand = qwerty;
            GridView1.DataSourceID = SqlDataSource1.ID;
            GridView1.DataBind();
        }
    }
}
