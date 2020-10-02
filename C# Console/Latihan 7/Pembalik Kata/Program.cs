using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace Pembalik_Kata
{
    class Program
    {
        static void Main(string[] args)
        {
            Console.Write("Masukkan kalimat: ");
            string kalimat = Console.ReadLine();
            Console.Write("Dibalik akan menjadi: ");
            for (int i = kalimat.Length - 1; i >= 0; i--)
            {
                Console.Write(kalimat[i]);
            }
            Console.ReadLine();
            }
        }
    }
