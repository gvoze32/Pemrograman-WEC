using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Data.OleDb;

namespace ConsoleApplication1
{
    class Program
    {
        static void Main(string[] args)
        {
            OleDbConnection kon = new OleDbConnection("Provider=Microsoft.ACE.OleDb.12.0;Data Source=C:/Users/Mahasiswa/Desktop/dbbrg.accdb");
            kon.Open();

            string sql = "select * from Barang";
            OleDbCommand cm = new OleDbCommand (sql,kon);

            OleDbDataReader dr = cm.ExecuteReader();

            while (dr.Read())
            {
                Console.WriteLine("Kode Barang:" + dr[0] + " Nama Barang: " + dr[1] + " Jenis Barang " + dr[2]);
            }

            kon.Close();
            Console.ReadKey();
    }
    }
}
