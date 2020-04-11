using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication1
{
    public partial class index : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = "欢迎【"+Session["Role"].ToString()+"】-"+ Session["UserName"].ToString()+"登录系统.时间：" + DateTime.Now.ToString();
        }
    }
}