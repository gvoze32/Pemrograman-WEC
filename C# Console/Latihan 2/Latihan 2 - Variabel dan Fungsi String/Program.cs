using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Latihan_2___Variabel_dan_Fungsi_String
{
    class Program
    {
        static void Main(string[] args)
        {
            // Identitas
            Console.BackgroundColor = ConsoleColor.Black;
            Console.ForegroundColor = ConsoleColor.Red;
            Console.SetCursorPosition(7, 5);
            Console.Write("Nama      :");
            Console.SetCursorPosition(7, 6);
            Console.Write("Alamat    :");
            Console.SetCursorPosition(7, 7);
            Console.Write("TTL       :");
            Console.SetCursorPosition(7, 8);
            Console.Write("Hobi      :");

            // String
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.SetCursorPosition(20, 5);
            string nama = Console.ReadLine();
            Console.SetCursorPosition(20, 6);
            string alamat = Console.ReadLine();
            Console.SetCursorPosition(20, 7);
            string ttl = Console.ReadLine();
            Console.SetCursorPosition(20, 8);
            string hobi = Console.ReadLine();


            // Output
            Console.ForegroundColor = ConsoleColor.Green;
            Console.SetCursorPosition(0, 11);
            Console.WriteLine("Halo, nama saya " + nama + ", tinggal di " + alamat + ", lahir pada " + ttl + ", hobi saya " + hobi + ", salam kenal.");

            Console.ReadKey();
        }
    }
}
