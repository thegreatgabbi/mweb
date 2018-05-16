<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ValidationControls.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" Display="None" ErrorMessage="Please enter a name."></asp:RequiredFieldValidator>
            <br />
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
            <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="None" ErrorMessage="Both email addresses must be the same."></asp:CompareValidator>
            <br />
            <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox4" Display="None" ErrorMessage="Please enter a valid NRIC." ValidationExpression="[SFTG]\d{7}[A-Z]"></asp:RegularExpressionValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" />
            <br />
            <br />
            <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
        </div>
    </form>
</body>
</html>
