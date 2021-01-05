using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using Travel.Controllers;

namespace Travel.Models
{
    public class Mien_Chauluc
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();

        private string trongNgoaiNuoc;
        private int maMien;
        private string tenMien;

        public int MaMien { get => maMien; set => maMien = value; }
        public string TenMien { get => tenMien; set => tenMien = value; }
        public string TrongNgoaiNuoc { get => trongNgoaiNuoc; set => trongNgoaiNuoc = value; }

        public Mien_Chauluc(int ma)
        {
            MaMien = ma;
            MIEN mien = dl.MIENs.FirstOrDefault(x => x.MA_MIEN == ma);
            TenMien = mien.TEN_MIEN;
        }

    }
}