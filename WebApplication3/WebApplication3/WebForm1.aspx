<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication3.Styles.WebForm1"
    Culture="auto" UICulture="auto" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">


<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (operando1.Text.Length > 0 && operando2.Text.Length > 0)
        {

            double res = 0;
            double x1 = Convert.ToDouble(operando1.Text);
            double x2 = Convert.ToDouble(operando2.Text);

            switch (operador.SelectedValue)
            {

                case "+": res = x1 + x2; break;
                case "-": res = x1 - x2; break;
                case "*": res = x1 * x2; break;
                case "/": res = x1 / x2; break;

            }
            Label1.Text = res.ToString();
        }
    }
</script>

<head runat="server">
    <title></title>
    <style type="text/css">
        .style1
        {}
    </style>
</head>
<body>
<center>
    <form id="form1" runat="server">
    <div>
        <asp:ScriptManager ID="ScriptManager1" runat="server" EnableScriptGlobalization="true"
            EnableScriptLocalization="true">
        </asp:ScriptManager>
        <asp:TextBox ID="operando1" runat="server"></asp:TextBox>
        <asp:DropDownList ID="operador" runat="server" CssClass="style1" Height="20px" 
            Width="127px">
            <asp:ListItem>+</asp:ListItem>
            <asp:ListItem>-</asp:ListItem>
            <asp:ListItem Value="*"></asp:ListItem>
            <asp:ListItem>/</asp:ListItem>
        </asp:DropDownList>
        <asp:TextBox ID="operando2" runat="server"></asp:TextBox>
        <br />
        <br />
        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
            <ContentTemplate>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" 
                    Text="Calcular" />
                <br />
                <asp:Label ID="Label1" runat="server"> </asp:Label>
            </ContentTemplate>
        </asp:UpdatePanel>
        <br>
    </form>
    </center>
</body>

</html>
