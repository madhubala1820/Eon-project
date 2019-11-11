<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="Eon_project.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:GridView ID="GridView1" runat="server" style="z-index: 1; left: 222px; top: 150px; position: absolute; height: 133px; width: 187px">
        </asp:GridView>
        <asp:LinkButton ID="LinkButton1" runat="server" BackColor="Lime" OnClick="LinkButton1_Click" style="z-index: 1; left: 359px; top: 77px; position: absolute">+Add User</asp:LinkButton>
    </form>
</body>
</html>
