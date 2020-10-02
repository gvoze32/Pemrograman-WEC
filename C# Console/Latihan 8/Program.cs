using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace percabangan_iyh
{
    class Program
    {
        static void Main(string[] args)
        {
            
            // Menghitung Benda
            Console.WriteLine("PILIH MENU DI BAWAH");
            Console.WriteLine("1. Lingkaran");
            Console.WriteLine("2. Persegi");
            Console.WriteLine("3. Segitiga");
            Console.Write("Input: ");
            int pil = int.Parse(Console.ReadLine());


            if (pil == 1)
            {
                // lingkaran
                double luas;
                int jari;

                Console.WriteLine("Mencari Luas Lingkaran");
                Console.Write("Masukkan jari-jari: ");
                jari = int.Parse(Console.ReadLine());
                luas = 3.14 * jari * jari;

                Console.WriteLine("Luas Lingkaran: " + luas);
            }

            else if (pil == 2)
            {
            // persegi
            int luasper;
            int sisi;

            Console.WriteLine("Mencari Luas Persegi");
            Console.Write("Masukkan sisi: ");
            sisi = int.Parse(Console.ReadLine());
            luasper = sisi * sisi;

            Console.WriteLine("Luas Persegi: " + luasper);
            }

            else if (pil == 3)
            {
            // segitiga
            double luassgt;
            int a, t;

            Console.WriteLine("Mencari Luas Segitiga");
            Console.Write("Masukkan alas: ");
            a = int.Parse(Console.ReadLine());
            Console.Write("Masukkan tinggi: ");
            t = int.Parse(Console.ReadLine());
            luassgt = a * t;

            Console.WriteLine("Luas Segitiga: " + luassgt);
            }

            Console.ReadKey();


            /*
            int nilai;
            Console.WriteLine("hehe");
            */
        }
    }
}
