<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="WebApplication1.index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style>
        #top {
            height:70px;
            border:1px solid #ff6a00;
            font-size:50px;
            color:red;

        }
        #left {
            float:left;
            width:15%;
            height:500px;
            border:1px solid #ff6a00;
        }
        #right {
            float:right;
            width:84%;
            height:500px;
            border:1px solid #ff6a00;
        }
        #main {
            width:100%;
            height:498px;
            border:0px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="top">系统登录管理<asp:Label ID="Label1" runat="server" Font-Size="14pt" ForeColor="Black" Text="Label"></asp:Label>
        </div>
        <div id="left">
            <asp:TreeView ID="TreeView1" runat="server" Font-Size="11pt" ImageSet="News" NodeIndent="10">
                <HoverNodeStyle Font-Underline="True" />
                <Nodes>
                    <asp:TreeNode Text="系统登录管理" Value="系统登录管理">
                        <asp:TreeNode NavigateUrl="~/userquery.aspx" Text="用户查询" Value="用户查询" Target="main"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/useradd.aspx" Text="用户添加" Value="用户添加" Target="main"></asp:TreeNode>
                    </asp:TreeNode>
                </Nodes>
                <NodeStyle Font-Names="Arial" Font-Size="10pt" ForeColor="Black" HorizontalPadding="5px" NodeSpacing="0px" VerticalPadding="0px" />
                <ParentNodeStyle Font-Bold="False" />
                <SelectedNodeStyle Font-Underline="True" HorizontalPadding="0px" VerticalPadding="0px" />
            </asp:TreeView>
        </div>
        <div id="right"><iframe id="main" name="main" src="userquery.aspx"></iframe></div>
    </form>
</body>
</html>
