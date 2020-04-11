<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="useradd.aspx.cs" Inherits="WebApplication1.useradd" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        table {
            width:480px;
            height:150px;
            border:1px solid #808080;
            margin:0px auto;
            margin-top:100px;
        }
        td {
            border:1px solid #808080;
        }
      
     
      
        .auto-style4 {
            text-align: center;
            width: 196px;
        }
     
        .auto-style5 {
            width: 609px;
        }
     
        .auto-style6 {
            text-align: center;
        }
        #top {
            border:1px solid #f00;
            font-size:14px;
            height:20px;
        }
     
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div id="top">
                用户添加
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style6" colspan="2">用户添加</td>
                </tr>
                <tr>
                    <td class="auto-style4">用户名：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtUserName" runat="server" Width="175px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtUserName" ErrorMessage="用户名不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">密码：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassWord" runat="server"  TextMode="Password"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtPassWord" ErrorMessage="密码不能为空" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">确认密码：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtPassWord2" runat="server" TextMode="Password"></asp:TextBox>
                        <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="txtPassWord" ControlToValidate="txtPassWord2" ErrorMessage="密码不一致" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">电子邮箱：</td>
                    <td class="auto-style5">
                        <asp:TextBox ID="txtEmail" runat="server" Width="176px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style4">角色:</td>
                    <td class="auto-style5">
                        <asp:DropDownList ID="DropDownList1" runat="server">
                            <asp:ListItem>管理员</asp:ListItem>
                            <asp:ListItem>普通用户</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td class="auto-style6" colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="添加" OnClick="Button1_Click" />
                        &nbsp;&nbsp;
                        <input id="Reset1" type="reset" value="重置" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>