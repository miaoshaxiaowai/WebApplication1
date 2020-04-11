using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtPassWord_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string sqlstr = string.Format("insert into td_user(UserName,PassWord,Email,Role) values('{0}','{1}','{2}','{3}')",txtUserName.Text,txtPassWord.Text,txtEmail.Text,"普通用户");
            bool yesno = DBhelper.InsertUpdateDel(sqlstr);
            if (yesno == true)
            {
                txtEmail.Text = "";
                txtPassWord.Text = "";
                txtPassWord2.Text = "";
                txtUserName.Text = "";
                Response.Write("<script>alert('注册成功!')</script>");
               
            }
            else {
                Response.Write("<script>alert('注册失败!')</script>");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            txtEmail.Text = "";
            txtPassWord.Text = "";
            txtPassWord2.Text = "";
            txtUserName.Text = "";
        }
    }
}