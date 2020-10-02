using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Perulangan_iyh_beb
{
    class Program
    {
        static void Main(string[] args)
        {

            // Perulangan Deret Angka
            Console.WriteLine("Perulangan Deret Angka (Bilangan Prima):");
            int a = 1, b = 1, c;

            c = a + b;
            Console.Write(c + ",");

            for (int k = 1; k < 12; k++)
            {
                b = b + 1;
                c = c + b;
                Console.Write(c + ",");
            }
                Console.ReadKey();
        }
    }
}
