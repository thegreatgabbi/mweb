<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AllOrders.aspx.cs" Inherits="AllOrders" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            <asp:GridView
                ID="GridView1"
                runat="server"
                AutoGenerateColumns="False"
                DataKeyNames="OrderID"
                OnRowDeleting="GridView1_RowDeleting"
                OnRowEditing="GridView1_RowEditing"
                OnRowCancelingEdit="GridView1_RowCancelingEdit"
                >
                <Columns>
                    <asp:BoundField DataField="OrderID" HeaderText="OrderID" ReadOnly="True" InsertVisible="False" SortExpression="OrderID"/>
                    <asp:BoundField DataField="CustomerName" HeaderText="CustomerName" SortExpression="CustomerName" />
                    <asp:TemplateField HeaderText="Dish" SortExpression="Dish">
                        <ItemTemplate>
                            <asp:Label ID="Label1" runat="server" Text='<%# Bind("Dish") %>'></asp:Label>
                        </ItemTemplate>
                        <EditItemTemplate>
                            <asp:DropDownList
                                ID="DropDownList1"
                                runat="server"
                                SelectedValue = '<%# Eval("Dish") %>'>
                                <asp:ListItem Text="Chicken Rice"/>
                                <asp:ListItem Text="Dumpling Noodles"/>
                                <asp:ListItem Text="Fish &amp; Chips"/>
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
                                SelectedValue = '<%# Eval("Size") %>'>
                                <asp:ListItem Text="Small"/>
                                <asp:ListItem Text="Regular"/>
                                <asp:ListItem Text="Large"/>
                            </asp:DropDownList>
                        </EditItemTemplate>
                    </asp:TemplateField>
                    <asp:CheckBoxField DataField="Chili" HeaderText="Chili" SortExpression="Chili" />
                    <asp:CheckBoxField DataField="Pepper" HeaderText="Pepper" SortExpression="Pepper" />
                    <asp:CheckBoxField DataField="MoreSalt" HeaderText="MoreSalt" SortExpression="MoreSalt" />
                    <asp:CommandField
                        ButtonType="Button"
                        ShowDeleteButton="True"
                        ShowEditButton="True"
                        ShowSelectButton="true"
                        />
                </Columns>
            </asp:GridView>
            <br />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/Default.aspx">Back</asp:HyperLink>
        </div>
    </form>
</body>
</html>
