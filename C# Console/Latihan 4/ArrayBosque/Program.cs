using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ArrayBosque
{
    class Program
    {
        static void Main(string[] args)
        {
            int jmlh;
            Console.Write("Jumlah mahasiswa: ");
            jmlh = int.Parse(Console.ReadLine());

            int[] nilai = new int[jmlh];

            // Masukan Nilai
            for (int i = 0; i < jmlh; i++)
            {
                Console.Write("Mahasiswa ke-" + (i + 1) + "? ");
                nilai[i] = int.Parse(Console.ReadLine());
            }

            // Jumlah Semua
            int total = 0;
            for (int iii = 0; iii < jmlh; iii++)
            {
                total = total + nilai[iii];
            }

            // Rata-Rata
            double ratarata = total / jmlh;

            for (int ii = 0; ii < jmlh; ii++)
            {
                Console.WriteLine("Nilai mahasiswa ke-" + (ii+1) + " = " + nilai[ii]);
            }

            Console.WriteLine("Rata-rata nilai dari " + jmlh + " mahasiswa adalah " + ratarata);
            Console.ReadKey();
        }
    }
}
