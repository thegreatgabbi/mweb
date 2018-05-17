using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;


namespace ConsoleApp2
{
    using ServiceReference1;
    class Program
    {
        static void Main(string[] args)
        {
            ServiceClient c = new ServiceClient();
            int[] ids = c.GetProductIds();
            foreach (int i in ids)
            {
                Console.WriteLine(i);
                WCF_Product p = c.GetProduct(i.ToString());
                Console.WriteLine(p.ProductName);
            }
        }
    }
}
