using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Travel.Models
{
    public class TourDaDat
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();

        public int matour, makh;
        public string tentour;
        public decimal giaNguoiLon;
        public decimal giaTreEm;
        public int sochonguoilon;
        public int sochotreem;
    }
}