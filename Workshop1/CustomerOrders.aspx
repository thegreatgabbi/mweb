<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerOrders.aspx.cs" Inherits="CustomerOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <%-- AutoGenerateColumns true by default --%>
            <asp:GridView
                ID="GridView_CustomerOrders"
                runat="server"
                AutoGenerateColumns="false"
                DataKeyNames="OrderID"
                OnRowDeleting="GridView_CustomerOrders_RowDeleting">
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="ID"/>
                    <asp:BoundField DataField="CustomerName" HeaderText="Name"/>
                    <asp:BoundField DataField="Dish" HeaderText="Dish"/>
                    <asp:BoundField DataField="Size" HeaderText="Size"/>
                    <asp:CheckBoxField DataField="Chili" HeaderText="Chili"/>
                    <asp:CheckBoxField DataField="Pepper" HeaderText="Pepper"/>
                    <asp:CheckBoxField DataField="MoreSalt" HeaderText="More Salt"/>
                    <asp:CommandField ButtonType="Button" ShowDeleteButton="True" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Back</asp:HyperLink>
        </div>
    </form>
</body>
</html>
