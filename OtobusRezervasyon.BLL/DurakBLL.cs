using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OtobusRezervasyon.DAL;
namespace OtobusRezervasyon.BLL
{
    public class DurakBLL
    {
        public static object duraklarigetirfrom()
        {
            SeferiEntities durakDataContext = new SeferiEntities();
            var duraklar = durakDataContext.Duraklars.Where(d=> d.DurakID != null).Select(x=>new
            {
                x.DurakID,
                x.DurakAdi
            }
            );
            return duraklar.ToList();
        }


        public static object duraklarigetirto(int nereden)
        {
            SeferiEntities durakDataContext = new SeferiEntities();
            var duraklar = durakDataContext.Duraklars.Where(d => d.DurakID > nereden).Select(x => new
            {
                x.DurakID,
                x.DurakAdi
            }
            );
            return duraklar.ToList();
        }


    }
}
