using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button_Submit_Click(object sender, EventArgs e)
    {
        FoodOrdersEntities context = new FoodOrdersEntities();

        string name = TextBox_Name.Text;
        string dish = DropDownList_Food.Text;
        string size = RadioButtonList_Size.Text;

        Order o = new Order();

        o.CustomerName = name;
        o.Dish = dish;
        o.Size = size;

        // check if each item in CheckBoxList is selected
        if (CheckBoxList_Spices.Items[0].Selected == true)
        {
            o.Chili = true;
        }
        if (CheckBoxList_Spices.Items[1].Selected == true)
        {
            o.Pepper = true;
        }
        if (CheckBoxList_Spices.Items[2].Selected == true)
        {
            o.MoreSalt = true;
        }

        // Change text of Result
        //Label_Result.Text = String.Format("{0} wants a {1} {2} with {3}.", name, size, dish, spices);

        context.Orders.Add(o);
        context.SaveChanges();

        Label_Result.Text = "Success!";
    }
}