using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OtobusRezervasyon.DAL;

namespace OtobusRezervasyon.BLL
{
    public class GuzergahBLL
    {
        public static object guzergahlarigetir(int durakid)
        {
            SeferiEntities guzergahDataContext = new SeferiEntities();
            var guzergah = from g in guzergahDataContext.GuzergahDuraklaris
                           join gd in guzergahDataContext.Guzergahlars on g.GuzergahID equals gd.GuzergahID
                           where g.DurakID == durakid
                           select new
                           {
                               gd.GuzergahID,
                               gd.GuzergahAdi
                           };
                           
                           
            return guzergah.ToList();
        }
    }
}
