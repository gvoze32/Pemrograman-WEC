using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Percabangan_Pembanding_2_Angka
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("Pembanding Dua Angka");
            Console.WriteLine(" ");
            Console.Write("Bilangan Pertama: ");
            int bil1 = int.Parse (Console.ReadLine());

            Console.Write("Bilangan Kedua: ");
            int bil2 = int.Parse (Console.ReadLine());

            Console.WriteLine(" ");

            if (bil1 > bil2)
            {
                Console.WriteLine(bil1 + " > " + bil2);
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine("Bilangan pertama lebih besar dari bilangan kedua.");
            }

            else if (bil1 < bil2)
            {
                Console.WriteLine(bil1 + " < " + bil2);
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine("Bilangan pertama lebih kecil dari bilangan kedua.");
            }

            else if (bil1 == bil2)
            {
                Console.WriteLine(bil1 + " = " + bil2);
                Console.ForegroundColor = ConsoleColor.Yellow;
                Console.WriteLine("Bilangan pertama sama dengan bilangan kedua.");
            }

            Console.ReadKey();
        }
    }
}
