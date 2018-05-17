using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ConsoleApp1
{
    using ServiceReference1;
    class Program
    {
        static void Main(string[] args)
        {
            WebServiceSoapClient c = new WebServiceSoapClient();
            ArrayOfInt ids = c.GetProductIds();
            foreach (int id in ids)
            {
                Console.WriteLine(id);
                Product p = c.GetProduct(id);
                Console.WriteLine(p.ProductName);
            }
        }
    }
}
