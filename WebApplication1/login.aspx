<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="WebApplication1.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        table {
            width:320px;
            height:150px;
            border:1px solid #808080;
            margin:0px auto;
            margin-top:100px;
        }
        td {
            border:1px solid #808080;
        }
     
        .auto-style2 {
            width: 168px;
        }
       
        .auto-style4 {
            width: 63px;
        }
        .auto-style5 {
            text-align: center;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style5" colspan="3">登录窗体</td>
                </tr>
                <tr>
                    <td class="auto-style4">账号：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </td>
                    <td class="auto-style3">
                        <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/register.aspx">注册用户</asp:LinkButton>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">密码：</td>
                    <td class="auto-style2">
                        <asp:TextBox ID="TextBox2" runat="server" TextMode="Password"></asp:TextBox>
                    </td>
                    <td class="auto-style3">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style5" colspan="3">
                        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="登录" />
&nbsp;&nbsp;
                        <asp:Button ID="Button2" runat="server" Text="重置" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
