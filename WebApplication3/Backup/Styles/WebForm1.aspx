<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.Styles.WebForm1" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    


        <asp:TextBox ID="operando1" runat="server"></asp:TextBox>
        <br />
        <asp:DropDownList ID="operador" runat="server">
            <asp:ListItem>+</asp:ListItem>
            <asp:ListItem>-</asp:ListItem>
            <asp:ListItem Value="*"></asp:ListItem>
            <asp:ListItem>/</asp:ListItem>
        </asp:DropDownList>
        <br />
        <asp:TextBox ID="operando2" runat="server"></asp:TextBox>
        <br />
        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
            Text="Calcular" />
        <br />
        <asp:Label ID="Label1" runat="server"> </asp:Label>
    


    </div>
    </form>
</body>
</html>
