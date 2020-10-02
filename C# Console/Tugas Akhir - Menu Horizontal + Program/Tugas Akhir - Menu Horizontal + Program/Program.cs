using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.IO;
using System.Data.OleDb;

namespace Tugas_Akhir___Menu_Horizontal___Program
{
    class Program
    {
        static void Main(string[] args)
        {

            Console.CursorVisible = false;

            Console.WriteLine("║");
            Console.WriteLine("║");
            Console.WriteLine("║");
            Console.WriteLine("╚");

            Console.SetCursorPosition(1, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(2, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(3, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(4, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(5, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(6, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(7, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(8, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(9, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(10, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(11, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(12, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(13, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(14, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(15, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(16, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(17, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(18, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(19, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(20, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(21, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(22, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(23, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(24, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(25, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(26, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(27, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(28, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(29, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(30, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(31, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(32, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(33, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(34, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(35, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(36, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(37, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(38, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(39, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(40, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(41, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(42, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(43, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(44, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(45, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(46, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(47, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(48, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(49, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(50, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(51, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(52, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(53, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(54, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(55, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(56, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(57, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(58, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(59, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(60, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(61, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(62, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(63, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(64, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(65, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(66, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(67, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(68, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(69, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(70, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(71, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(72, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(73, 3);
            Console.WriteLine("═");
            Console.SetCursorPosition(74, 3);
            Console.WriteLine("╝");
            Console.SetCursorPosition(74, 2);
            Console.WriteLine("║");
            Console.SetCursorPosition(74, 1);
            Console.WriteLine("║");
            Console.SetCursorPosition(74, 0);
            Console.WriteLine("║");

            int cek = 1;
            MenuHor(cek);

            ConsoleKeyInfo keyy;
            keyy = Console.ReadKey();

            while (keyy.Key != ConsoleKey.X)
            {
                keyy = Console.ReadKey();

                if (keyy.Key == ConsoleKey.RightArrow)
                {
                    if (cek == 10)
                    {
                        cek = 0;
                    }
                    cek++;
                    MenuHor(cek);
                }

                if (keyy.Key == ConsoleKey.LeftArrow)
                {
                    if (cek == 1)
                    {
                        cek = 11;
                    }
                    cek--;
                    MenuHor(cek);
                }

                if (keyy.Key == ConsoleKey.Enter)
                {
                    if (cek == 1)
                    {
                        latihan1();
                    }
                    else if (cek == 2)
                    {
                        latihan2();
                    }
                    else if (cek == 3)
                    {
                        latihan3();
                    }
                    else if (cek == 4)
                    {
                        latihan4();
                    }
                    else if (cek == 5)
                    {
                        latihan5();
                    }
                    else if (cek == 6)
                    {
                        latihan6();
                    }
                    else if (cek == 7)
                    {
                        latihan7();
                    }
                    else if (cek == 8)
                    {
                        latihan8();
                    }
                    else if (cek == 9)
                    {
                        latihan9();
                    }
                    else if (cek == 10)
                    {
                        latihan10();
                    }
                }
            }
        }

        static void MenuHor(int cek)
        {
            Console.SetCursorPosition(1, 0);
            if (cek == 1)
            {
                Console.Write(">Latihan. 1");
            }
            else
            {
                Console.Write(" Latihan. 1");
            }

            Console.SetCursorPosition(15, 0);
            if (cek == 2)
            {
                Console.Write(">Latihan. 2");
            }
            else
            {
                Console.Write(" Latihan. 2");
            }

            Console.SetCursorPosition(30, 0);
            if (cek == 3)
            {
                Console.Write(">Latihan. 3");
            }
            else
            {
                Console.Write(" Latihan. 3");
            }

            Console.SetCursorPosition(45, 0);
            if (cek == 4)
            {
                Console.Write(">Latihan. 4");
            }
            else
            {
                Console.Write(" Latihan. 4");
            }

            Console.SetCursorPosition(60, 0);
            if (cek == 5)
            {
                Console.Write(">Latihan. 5");
            }
            else
            {
                Console.Write(" Latihan. 5");
            }

            Console.SetCursorPosition(1, 2);
            if (cek == 6)
            {
                Console.Write(">Latihan. 6");
            }
            else
            {
                Console.Write(" Latihan. 6");
            }

            Console.SetCursorPosition(15, 2);
            if (cek == 7)
            {
                Console.Write(">Latihan. 7");
            }
            else
            {
                Console.Write(" Latihan. 7");
            }

            Console.SetCursorPosition(30, 2);
            if (cek == 8)
            {
                Console.Write(">Latihan. 8");
            }
            else
            {
                Console.Write(" Latihan. 8");
            }

            Console.SetCursorPosition(45, 2);
            if (cek == 9)
            {
                Console.Write(">Latihan. 9");
            }
            else
            {
                Console.Write(" Latihan. 9");
            }

            Console.SetCursorPosition(60, 2);
            if (cek == 10)
            {
                Console.Write(">Latihan. 10");
            }
            else
            {
                Console.Write(" Latihan. 10");
            }
        }

        static void latihan1()
        {
            // Title
            Console.ForegroundColor = ConsoleColor.Cyan;
            Console.SetCursorPosition(33, 5);
            Console.WriteLine("WEARNES EDUCATION CENTER");

            // Subtitle
            Console.ForegroundColor = ConsoleColor.White;
            Console.SetCursorPosition(28, 6);
            Console.WriteLine("Teknik Informatika dan Komputer");

            // Warna
            Console.SetCursorPosition(20, 9);
            Console.BackgroundColor = ConsoleColor.Magenta;
            Console.BackgroundColor = ConsoleColor.Yellow;
            Console.ForegroundColor = ConsoleColor.Black;
            Console.WriteLine("                 SELAMAT BELAJAR               ");
            Console.SetCursorPosition(20, 10);
            Console.BackgroundColor = ConsoleColor.DarkBlue;
            Console.ForegroundColor = ConsoleColor.White;
            Console.WriteLine("                Bahasa Pemrograman             ");
            Console.SetCursorPosition(20, 11);
            Console.BackgroundColor = ConsoleColor.Red;
            Console.ForegroundColor = ConsoleColor.Yellow;
            Console.WriteLine("                   C# (C-SHARP)                ");
            Console.BackgroundColor = ConsoleColor.Magenta;
            Console.ReadKey();
        }

        static void latihan2()
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
            Console.SetCursorPosition(0, 13);
            Console.WriteLine("Halo, nama saya " + nama + ", tinggal di " + alamat + ", lahir pada " + ttl + ", hobi saya " + hobi + ", salam kenal.");

            Console.ReadKey();
        }

        static void latihan3()
        {
            Console.SetCursorPosition(0, 4);
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
            Console.SetCursorPosition(0, 9);
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
            Console.SetCursorPosition(0, 9);
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
            Console.WriteLine("Luas Trapesium Siku-Siku: " + (atap + alas) * tinggi / 2);
            Console.ReadLine();
        }

        static void latihan4()
        {

            Console.SetCursorPosition(0, 4);
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
                Console.WriteLine("Nilai mahasiswa ke-" + (ii + 1) + " = " + nilai[ii]);
            }

            Console.WriteLine("Rata-rata nilai dari " + jmlh + " mahasiswa adalah " + ratarata);
            Console.ReadKey();
        }

        static void latihan5()
        {
            StreamWriter hosts = new StreamWriter("D:/datadb.txt", false);

            Console.SetCursorPosition(0, 4);
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
        static void latihan6()
        {

            if (File.Exists("%USERPROFILE%/Desktop/dbbrg.accdb"))
            {
                OleDbConnection kon = new OleDbConnection("Provider=Microsoft.ACE.OleDb.12.0;Data Source=%USERPROFILE%/Desktop/dbbrg.accdb");
                kon.Open();

                string sql = "select * from Barang";
                OleDbCommand cm = new OleDbCommand(sql, kon);

                OleDbDataReader dr = cm.ExecuteReader();

                while (dr.Read())
                {
                    Console.SetCursorPosition(0, 6);
                    Console.WriteLine("Kode Barang:" + dr[0] + " Nama Barang: " + dr[1] + " Jenis Barang " + dr[2]);
                }

                kon.Close();
                Console.ReadKey();
            }

            else
            {
                Console.SetCursorPosition(0, 4);
                Console.WriteLine("Sebelumnya buat database dengan nama dan format dbbrg.accdb di Desktop");
                Console.ReadKey();
            }
        }

        static void latihan7()
        {
            Console.SetCursorPosition(0, 4);
            Console.Write("Masukkan kalimat: ");
            string kalimat = Console.ReadLine();
            Console.Write("Dibalik akan menjadi: ");
            for (int i = kalimat.Length - 1; i >= 0; i--)
            {
                Console.Write(kalimat[i]);
            }
            Console.ReadLine();
        }

        static void latihan8()
        {
            {

                // Menghitung Benda
                Console.SetCursorPosition(0, 4);
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
            }
        }

        static void latihan9()
        {
            Console.SetCursorPosition(0, 4);
            Console.WriteLine("Pembanding Dua Angka");
            Console.WriteLine(" ");
            Console.Write("Bilangan Pertama: ");
            int bil1 = int.Parse(Console.ReadLine());

            Console.Write("Bilangan Kedua: ");
            int bil2 = int.Parse(Console.ReadLine());

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

        static void latihan10()
        {

            // Perulangan Deret Angka
            Console.SetCursorPosition(0, 4);
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