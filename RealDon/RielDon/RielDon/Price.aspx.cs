using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.OleDb;

namespace RielDon
{
    public partial class Price : System.Web.UI.Page
    {
        public static String qwerty;
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlDataSource1.SelectCommand = qwerty;
            GridView1.DataSourceID = SqlDataSource1.ID;
            GridView1.DataBind();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            qwerty = "SELECT * FROM building;";
            SqlDataSource1.SelectCommand = qwerty;
            GridView1.DataSourceID = SqlDataSource1.ID;
            GridView1.DataBind();
        }

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string ob = DropDownList1.SelectedValue;
            string reg = DropDownList2.SelectedValue;
            string comp = DropDownList3.SelectedValue;
            int fl1 = Convert.ToInt32(TextBox1.Text);
            int fl2 = Convert.ToInt32(TextBox6.Text);
            int price1 = Convert.ToInt32(TextBox2.Text);
            int price2 = Convert.ToInt32(TextBox3.Text);
            int sq1 = Convert.ToInt32(TextBox4.Text);
            int sq2 = Convert.ToInt32(TextBox5.Text);
            qwerty = "SELECT* FROM building " +
                "WHERE ([floor] >=" + fl1 + ") AND ([floor] <=" + fl2 + ") AND ([price] >=" + price1 + ") AND ([price] <=" + price2 + ") AND ([square] >=" + sq1 + ") AND ([square] <=" + sq2 + ") AND ([region] IN (\"" + reg + "\")) AND ([objecttype] IN (\"" + ob + "\")) AND ([compactness] IN (\"" + comp + "\")) AND ([status] = 0);";
            SqlDataSource1.SelectCommand = qwerty;
            GridView1.DataSourceID = SqlDataSource1.ID;
            GridView1.DataBind();
        }
    }
}
