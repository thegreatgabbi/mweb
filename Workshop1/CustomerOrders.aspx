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
                OnRowDeleting="GridView_CustomerOrders_RowDeleting"
                OnRowEditing="GridView_CustomerOrders_RowEditing">
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="ID" ReadOnly="true"/>
                    <asp:BoundField DataField="CustomerName" HeaderText="Name" />
                    <asp:TemplateField HeaderText="Dish" SortExpression="Dish">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Dish") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList
                                ID="DropDownList1"
                                runat="server"
                                SelectedValue='<%# Eval("Dish") %>'>
                                <asp:ListItem Text="Chicken Rice" />
                                <asp:ListItem Text="Dumpling Noodles" />
                                <asp:ListItem Text="Fish &amp; Chips" />
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:TemplateField HeaderText="Size" SortExpression="Size">
                        <ItemTemplate>
                            <asp:Label ID="Label2" runat="server" Text='<%# Bind("Size") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList
                                ID="DropDownList2"
                                runat="server"
                                SelectedValue='<%# Eval("Size") %>'>
                                <asp:ListItem Text="Small" />
                                <asp:ListItem Text="Regular" />
                                <asp:ListItem Text="Large" />
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CheckBoxField DataField="Chili" HeaderText="Chili" />
                    <asp:CheckBoxField DataField="Pepper" HeaderText="Pepper" />
                    <asp:CheckBoxField DataField="MoreSalt" HeaderText="More Salt" />
                    <asp:CommandField
                        ButtonType="Button"
                        ShowDeleteButton="True"
                        ShowEditButton="true" />
                </Columns>
            </asp:GridView>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="Default.aspx">Back</asp:HyperLink>
        </div>
    </form>
</body>
</html>
