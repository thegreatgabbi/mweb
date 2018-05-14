<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="CustomerLabel" runat="server" Text="Customer Name"></asp:Label>
            <br />
            <asp:TextBox ID="TextBox_Name" runat="server"></asp:TextBox>
            &nbsp;<asp:HyperLink ID="HyperLink2" runat="server">Check Orders</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="DishLabel" runat="server" Text="Dish"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList_Food" runat="server">
                <asp:ListItem>Chicken Rice</asp:ListItem>
                <asp:ListItem>Dumpling Noodles</asp:ListItem>
                <asp:ListItem>Fish &amp; Chips</asp:ListItem>
            </asp:DropDownList>
            <br />
            <br />
            <asp:Label ID="SizeLabel" runat="server" Text="Size"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList_Size" runat="server">
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem>Regular</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Label ID="Label1" runat="server" Text="Spices"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList_Spices" runat="server">
                <asp:ListItem>Chili</asp:ListItem>
                <asp:ListItem>Pepper</asp:ListItem>
                <asp:ListItem>More Salt</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="Button_Submit" runat="server" Text="Submit" OnClick="Button_Submit_Click" />
&nbsp;<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="/AllOrders.aspx">View Summary</asp:HyperLink>
            <br />
            <br />
            <asp:Label ID="Label_Result" runat="server" Text="Result"></asp:Label>
        </div>
    </form>
</body>
</html>
