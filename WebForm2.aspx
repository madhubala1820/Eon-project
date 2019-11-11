<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="Eon_project.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        #TextArea1 {
            z-index: 1;
            left: 360px;
            top: 414px;
            position: absolute;
            height: 47px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        </div>
        <asp:Label ID="Label1" runat="server" style="z-index: 1; left: 266px; top: 65px; position: absolute" Text="Name"></asp:Label>
        <asp:Label ID="Label2" runat="server" style="z-index: 1; left: 260px; top: 125px; position: absolute" Text="Email id"></asp:Label>
        <asp:Label ID="Label3" runat="server" style="z-index: 1; left: 262px; top: 187px; position: absolute" Text="Gender"></asp:Label>
        <asp:Label ID="Label4" runat="server" style="z-index: 1; left: 266px; top: 248px; position: absolute; width: 70px" Text="Date Registered"></asp:Label>
        <asp:Label ID="Label5" runat="server" style="z-index: 1; left: 263px; top: 326px; position: absolute; width: 49px" Text="selected days"></asp:Label>
        <asp:Label ID="Label6" runat="server" style="z-index: 1; left: 256px; top: 410px; position: absolute; width: 62px" Text="Additional Request"></asp:Label>
        <asp:TextBox ID="TextBox1" runat="server" style="z-index: 1; left: 355px; top: 61px; position: absolute; height: 20px; width: 208px"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" style="z-index: 1; left: 355px; top: 122px; position: absolute; width: 203px; right: 365px;"></asp:TextBox>
        <asp:RadioButton ID="RadioButton1" runat="server" style="z-index: 1; left: 355px; top: 185px; position: absolute" Text="Male" GroupName="hh" />
        <asp:RadioButton ID="RadioButton2" runat="server" style="z-index: 1; left: 427px; top: 188px; position: absolute" Text="Female" GroupName="hh" OnCheckedChanged="RadioButton2_CheckedChanged" />
        <asp:TextBox ID="TextBox3"  runat="server" style="z-index: 1; left: 359px; top: 255px; position: absolute; width: 215px" placeholder="yyyy/MM/dd" ToolTip="yyyy/MM/dd"></asp:TextBox>
        <asp:CheckBox ID="CheckBox1" runat="server" style="z-index: 1; left: 359px; top: 326px; position: absolute; right: 519px" Text="Day1" />
        <asp:CheckBox ID="CheckBox2" runat="server" style="z-index: 1; left: 477px; top: 327px; position: absolute" Text="Day2" />
        <asp:CheckBox ID="CheckBox3" runat="server" style="z-index: 1; left: 362px; top: 357px; position: absolute" Text="Day3" />
        <p>
            &nbsp;</p>
        <asp:Button ID="Button1" runat="server" BackColor="#66FF66" OnClick="Button1_Click" style="z-index: 1; left: 611px; top: 507px; position: absolute" Text="submit" />
        <asp:TextBox ID="TextBox4" runat="server" style="z-index: 1; left: 364px; top: 421px; position: absolute; height: 50px" TextMode="MultiLine"></asp:TextBox>
        <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="INVALID DATE" MaximumValue="2019/05/31" MinimumValue="2019/01/01" style="z-index: 1; top: 248px; position: absolute; left: 662px"></asp:RangeValidator>
        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox2" ErrorMessage="INVALID ID" style="z-index: 1; left: 637px; top: 120px; position: absolute" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
        <asp:TextBox ID="TextBox5" runat="server" style="z-index: 1; left: 690px; top: 323px; position: absolute"></asp:TextBox>
    </form>
</body>
</html>
