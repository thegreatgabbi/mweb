using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Class1
/// </summary>
public static class BusinessLogic
{
    public static void DeleteRow(int row)
    {
        // Get OrderID of selected row
        FoodOrdersEntities context = new FoodOrdersEntities();
        var query = from x in context.Orders
                    where x.OrderID == row
                    select x;
        Order o = query.First();
        context.Orders.Remove(o);
        context.SaveChanges();
    }
}