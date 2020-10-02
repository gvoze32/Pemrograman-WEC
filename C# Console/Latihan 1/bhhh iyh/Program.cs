using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace bhhh_iyh
{
    class Program
    {
        static void Main(string[] args)
        {

            // Title
            Console.ForegroundColor = ConsoleColor.Cyan;
            Console.SetCursorPosition(33, 1);
            Console.WriteLine("WEARNES EDUCATION CENTER");
            
            // Subtitle
            Console.ForegroundColor = ConsoleColor.White;
            Console.SetCursorPosition(28, 2);
            Console.WriteLine("Teknik Informatika dan Komputer");

            // Warna
            Console.SetCursorPosition(20, 5);
            Console.BackgroundColor = ConsoleColor.Magenta;
            Console.BackgroundColor = ConsoleColor.Yellow;
            Console.ForegroundColor = ConsoleColor.Black;
            Console.WriteLine("                 SELAMAT BELAJAR               ");
            Console.SetCursorPosition(20, 6);
            Console.BackgroundColor = ConsoleColor.DarkBlue;
            Console.ForegroundColor = ConsoleColor.White;
            Console.WriteLine("                Bahasa Pemrograman             ");
            Console.SetCursorPosition(20, 7);
            Console.BackgroundColor = ConsoleColor.Red;
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine("                   C# (C-SHARP)                ");
            Console.BackgroundColor = ConsoleColor.Magenta;

            Console.ReadKey();
        }
    }
}
