using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using OtobusRezervasyon.DAL;

namespace OtobusRezervasyon.BLL
{
   public class SeferBLL
    {
        public static object SeferIDGetir(int Guzergahid)
        {
            SeferiEntities seferidgetir = new SeferiEntities();
            var seferid = seferidgetir.Seferlers.Where(x => x.GuzergahID == Guzergahid).Select(s => new
            {
                s.SeferID
            }
            );
            return seferid;
        }
    }
}
