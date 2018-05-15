<%@ Page Language="C#" AutoEventWireup="true" CodeFile="CustomerOrders.aspx.cs" Inherits="CustomerOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:GridView ID="GridView_CustomerOrders" runat="server" AutoGenerateColumns="False" DataKeyNames="CustomerName" DataSourceID="SqlDataSource1">
                <Columns>
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" ReadOnly="True" SortExpression="CustomerName" />
                    <asp:BoundField DataField="Dish" HeaderText="Dish" SortExpression="Dish" />
                    <asp:BoundField DataField="Size" HeaderText="Size" SortExpression="Size" />
                    <asp:CheckBoxField DataField="Chili" HeaderText="Chili" SortExpression="Chili" />
                    <asp:CheckBoxField DataField="Pepper" HeaderText="Pepper" SortExpression="Pepper" />
                    <asp:CheckBoxField DataField="MoreSalt" HeaderText="MoreSalt" SortExpression="MoreSalt" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:FoodOrdersConnectionString %>" SelectCommand="SELECT * FROM [Orders] WHERE ([CustomerName] = @CustomerName)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="CustomerName" QueryStringField="name" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Back</asp:HyperLink>
        </div>
    </form>
</body>
</html>
