<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="clase01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            
            <asp:Label ID="Label1" runat="server" Text="Apellido"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            
            <asp:Label ID="Label2" runat="server" Text="Nombre"></asp:Label>
            &nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:RadioButton ID="RadioButton1" runat="server" Text="Casado/a" GroupName="rdButtons" />
            <asp:RadioButton ID="RadioButton2" runat="server" Text="Soltero/a" GroupName="rdButtons"/>
            <asp:RadioButton ID="RadioButton3" runat="server" Text="Viudo/a" GroupName="rdButtons"/>
            <br />
        </div>
        <asp:RadioButtonList ID="RadioButtonList1" runat="server">
            <asp:ListItem Value="ncn">nacional</asp:ListItem>
            <asp:ListItem Value="ext">extranjero</asp:ListItem>
        </asp:RadioButtonList>
        <br />
        <asp:CheckBox ID="CheckBox1" runat="server" Text="Secundaria" />
        <asp:CheckBox ID="CheckBox2" runat="server" Text="Terciaria" />
        <asp:CheckBox ID="CheckBox3" runat="server" Text="Universitaria" />
        <br />
        <br />
        <asp:DropDownList ID="DropDownList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged">
        </asp:DropDownList>
        <br />
        <br />
        <asp:ListBox ID="ListBox1" runat="server" Width="104px"></asp:ListBox>
        <br />
        <br />
        <asp:Label ID="Label3" runat="server"></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
