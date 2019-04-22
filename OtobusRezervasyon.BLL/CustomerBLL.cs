using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OtobusRezervasyon.DAL;

namespace OtobusRezervasyon.BLL
{
    public class CustomerBLL
    {
        public static void  MusteriKayit(string MusteriAdiSoyadi,string tckimlik,int seferid, int binisdurakid,int inisdurakid,string aciklama)
        {
            SeferiEntities musterikayit = new SeferiEntities();
            Rezervasyonlar rezervasyon = new Rezervasyonlar();
            int rezervasyonid = rezervasyon.RezervasyonID + 1;
            rezervasyon.RezervasyonID = rezervasyonid;
            rezervasyon.MusteriAdiSoyadi = MusteriAdiSoyadi;
            rezervasyon.MusteriTCKN = tckimlik;
            rezervasyon.SeferID = seferid;
            rezervasyon.BinisDurakID = binisdurakid;
            rezervasyon.InisDurakID = inisdurakid;
            rezervasyon.Aciklama = aciklama;
            musterikayit.Rezervasyonlars.Add(rezervasyon);
            musterikayit.SaveChanges();
        }
    }
}
