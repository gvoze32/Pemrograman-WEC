using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;

namespace Belajar_System.IO
{
    class Program
    {
        static void Main(string[] args)
            {
            StreamWriter hosts = new StreamWriter("D:/datadb.txt", false);

            Console.Write("Berapa data mahasiswa yang akan kamu masukkan? ");
            int jml = int.Parse(Console.ReadLine());

            for (int a = 1; a <= jml; a++)
            {
                // Input Data
                Console.Write("Nama          : ");
                string nama = Console.ReadLine();
                Console.Write("Jenis Kelamin : ");
                string jk = Console.ReadLine();
                Console.Write("Tanggal Lahir : ");
                string tgl = Console.ReadLine();
                Console.Write("Kelas         : ");
                string kelas = Console.ReadLine();
                // Menulis ke File
                hosts.WriteLine(nama + ";" + jk + ";" + tgl + ";" + kelas);

                hosts.Close();
            }
        }
    }
}
