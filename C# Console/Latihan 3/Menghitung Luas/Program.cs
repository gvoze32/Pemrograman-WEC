using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Menghitung_Luas
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.WriteLine("PILIH MENU");
            Console.WriteLine("[s] Segitiga");
            Console.WriteLine("[t] Trapesium Siku-Siku");
            Console.Write("Pilih menu: ");
            string jej = Console.ReadLine();

            if (jej == "s")
            {
                segitiga();
                Console.ReadKey();
            }
            else if (jej == "t")
            {
                jajargenjang();
                Console.ReadKey();
            }
        }

        static void segitiga()
        {
            Console.SetCursorPosition(0, 6);
                Console.WriteLine("MENGHITUNG LUAS SEGITIGA");
                Console.WriteLine(" ");
                Console.WriteLine(@" |\");
                Console.WriteLine(@" | \");
                Console.WriteLine(@"t|  \");
                Console.WriteLine(@" |___\");
                Console.WriteLine("   a");
                Console.WriteLine(" ");
            Console.Write("Alas: ");
            int alas = int.Parse(Console.ReadLine());
            Console.Write("Tinggi: ");
            int tinggi = int.Parse(Console.ReadLine());
            Console.WriteLine(" ");
            Console.WriteLine("Luas Segitiga: " + 0.5 * alas * tinggi);
            Console.ReadLine();
        }

        static void jajargenjang()
        {
            Console.SetCursorPosition(0, 6);
            Console.WriteLine("MENGHITUNG LUAS TRAPESIUM SIKU-SIKU");
            Console.WriteLine(" ");
            Console.WriteLine("       a");
            Console.WriteLine(@"    ________");
            Console.WriteLine(@"   |        \");
            Console.WriteLine(@"  t|         \");
            Console.WriteLine(@"   |          \");
            Console.WriteLine(@"   |___________\");
            Console.WriteLine("       b");
            Console.WriteLine(" ");
            Console.Write("Panjang Atap: ");
            double atap = int.Parse(Console.ReadLine());
            Console.Write("Panjang Alas: ");
            double alas = int.Parse(Console.ReadLine());
            Console.Write("Tinggi: ");
            double tinggi = int.Parse(Console.ReadLine());
            Console.WriteLine(" ");
            Console.WriteLine("Luas Trapesium Siku-Siku: " + (atap+alas) * tinggi /2);
            Console.ReadLine();
        }
    }
}
