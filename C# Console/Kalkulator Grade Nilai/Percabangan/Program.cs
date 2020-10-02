using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Percabangan
{
    class Program
    {
        static void Main(string[] args)
        {
                Console.Write("Nama    : ");
                string nama = Console.ReadLine();
                Console.Write("Nilai   : ");
                int nilai = int.Parse(Console.ReadLine());

            if (nilai < 60)
            {
            Console.Write("Grade F");
            }
            else if (nilai < 70)
            {
                Console.Write("Grade D");
            }
            else if (nilai < 80)
            {
                Console.Write("Grade C");
            }
            else if (nilai < 90)
            {
                Console.Write("Grade B");
            }
            else
            {
                Console.Write("Grade A");
            }

            Console.ReadKey();
        }
    }
}
