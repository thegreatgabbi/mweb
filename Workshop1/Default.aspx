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
            <asp:TextBox ID="TextBox_Name" runat="server" ValidationGroup="1"></asp:TextBox>
            <asp:LinkButton 
                ID="LinkButton_MyOrders"
                runat="server"
                OnClick="LinkButton1_MyOrders_Click" ValidationGroup="1"
                >View My Orders</asp:LinkButton>
            <br />
            <asp:RequiredFieldValidator
                ID="RequiredFieldValidator1"
                runat="server"
                ControlToValidate="TextBox_Name" 
                ErrorMessage="Please enter your name." ValidationGroup="1" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="DishLabel" runat="server" Text="Dish"></asp:Label>
            <br />
            <asp:DropDownList ID="DropDownList_Food" runat="server" ValidationGroup="2">
                <asp:ListItem>- Select Dish -</asp:ListItem>
                <asp:ListItem>Chicken Rice</asp:ListItem>
                <asp:ListItem>Dumpling Noodles</asp:ListItem>
                <asp:ListItem>Fish &amp; Chips</asp:ListItem>
            </asp:DropDownList>
            <br />
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="DropDownList_Food" ErrorMessage="Please choose a dish." ForeColor="Red" InitialValue="- Select Dish -" ValidationGroup="2"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="SizeLabel" runat="server" Text="Size"></asp:Label>
            <asp:RadioButtonList ID="RadioButtonList_Size" runat="server" ValidationGroup="2">
                <asp:ListItem>Small</asp:ListItem>
                <asp:ListItem>Regular</asp:ListItem>
                <asp:ListItem>Large</asp:ListItem>
            </asp:RadioButtonList>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="RadioButtonList_Size" ErrorMessage="Please select a size." ValidationGroup="2" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Text="Spices"></asp:Label>
            <asp:CheckBoxList ID="CheckBoxList_Spices" runat="server">
                <asp:ListItem>Chili</asp:ListItem>
                <asp:ListItem>Pepper</asp:ListItem>
                <asp:ListItem>More Salt</asp:ListItem>
            </asp:CheckBoxList>
            <br />
            <asp:Button ID="Button_Submit" runat="server" Text="Submit" OnClick="Button_Submit_Click" UseSubmitBehavior="False" />
            &nbsp;<asp:LinkButton ID="LinkButton_Summary" runat="server" PostBackUrl="~/Orders.aspx" CausesValidation="False">View Summary</asp:LinkButton>
            <br />
            <asp:Label ID="Label_Result" runat="server" Text="Result"></asp:Label>
        </div>
    </form>
</body>
</html>
