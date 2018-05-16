<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Home</h1>
        <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/protected/Default.aspx">HyperLink</asp:HyperLink>
    </div>
    </form>
</body>
</html>
