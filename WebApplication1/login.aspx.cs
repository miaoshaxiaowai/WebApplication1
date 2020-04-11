using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string name = TextBox1.Text;
            string password = TextBox2.Text;
            if (name == "" || password == "")
            {
                Response.Write("<script>alert('用户名或密码不能为空')</script>");
            }
            else {
                string sqlstr = string.Format("select * from td_user where UserName='{0}' and PassWord ='{1}'",name,password);
                DataSet ds = DBhelper.GetDataSet(sqlstr);
                if (ds != null && ds.Tables[0] != null && ds.Tables[0].Rows.Count > 0)
                {
                    Session["UserName"] = name;
                    Session["Role"] = ds.Tables[0].Rows[0]["Role"].ToString();
                    Response.Redirect("index.aspx");
                }
                else {
                    Response.Write("<script>alert('用户名或密码不正确')</script>");
                }
            }

        }
    }
}