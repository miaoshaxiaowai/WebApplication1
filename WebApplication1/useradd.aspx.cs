using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class useradd : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (Session["Role"].ToString() == "管理员")
            {
                string sqlstr = string.Format("insert into td_user(UserName,PassWord,Email,Role) values('{0}','{1}','{2}','{3}')", txtUserName.Text, txtPassWord.Text, txtEmail.Text, txtEmail.Text, DropDownList1.SelectedItem.Text);
                bool yesno = DBhelper.InsertUpdateDel(sqlstr);
                if (yesno == true)
                {
                    Response.Write("<script>alert('保存成功')</script>");
                }
                else
                {
                    Response.Write("<script>alert('保存失败')</script>");
                }
            }
            else {
                Response.Write("<script>alert('无权限！')</script>");
            }
        }
    }
}