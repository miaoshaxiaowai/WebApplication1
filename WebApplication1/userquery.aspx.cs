using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class userquery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["UserName"] == null)
            {
                Response.Redirect("login.aspx");
            }

            if (!IsPostBack) {
                LoadData("");
            }
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            LoadData(TextBox1.Text);

        }
        public void LoadData(string name) {

            string sqlstr = "select * from td_user";
            if (name != "") {
                sqlstr += " where UserName like'%" + name + "%'";
            }
            DataSet ds = DBhelper.GetDataSet(sqlstr);
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}