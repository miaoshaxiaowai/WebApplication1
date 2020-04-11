<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="userquery.aspx.cs" Inherits="WebApplication1.userquery" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>用户查询</title>
    <style>
        #divtitle {
            border:1px solid#f00;
            height:25px;
            font-size:14px;
        }
        #divquery {
            border:1px solid#f00;
            height:25px;
            font-size:14px;
        }
        #divlist {
            border:1px solid #00ff21;
            height:600px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div id="divtitle"> 用户查询</div>
            <div id="divquery">
                <asp:Label ID="Label1" runat="server" Text="用户账号："></asp:Label>
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="查询" OnClick="Button1_Click" />
        </div>
            <div id="divlist">
                <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="White" BorderStyle="Ridge" BorderWidth="2px" CellPadding="3" CellSpacing="1" GridLines="None" Width="100%">
                    <Columns>
                        <asp:BoundField DataField="UserId" HeaderText="用户编号">
                        <HeaderStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="UserName" HeaderText="用户账号">
                        <HeaderStyle Width="100px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Email" HeaderText="电子邮件">
                        <HeaderStyle Width="200px" />
                        </asp:BoundField>
                        <asp:BoundField DataField="Role" HeaderText="角色">
                        <HeaderStyle Width="80px" />
                        </asp:BoundField>
                    </Columns>
                    <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
                    <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
                    <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
                    <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
                    <SelectedRowStyle BackColor="#9471DE" Font-Bold="True" ForeColor="White" />
                    <SortedAscendingCellStyle BackColor="#F1F1F1" />
                    <SortedAscendingHeaderStyle BackColor="#594B9C" />
                    <SortedDescendingCellStyle BackColor="#CAC9C9" />
                    <SortedDescendingHeaderStyle BackColor="#33276A" />
                </asp:GridView>
        </div>
        </div>
    </form>
</body>
</html>
