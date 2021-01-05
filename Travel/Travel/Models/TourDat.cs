using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Travel.Models
{
    public class TourDat
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();

        private int maTour;
        private string tenTour;
        private string hinhAnh;
        private decimal giaTour;
        private int sL;

        public int MaTour { get => maTour; set => maTour = value; }
        public string TenTour { get => tenTour; set => tenTour = value; }
        public string HinhAnh { get => hinhAnh; set => hinhAnh = value; }
        public int SL { get => sL; set => sL = value; }
        public decimal GiaTour { get => giaTour; set => giaTour = value; }

        public TourDat(int matour)
        {
            maTour = matour;
            CHUONG_TRINH_TOUR ct = dl.CHUONG_TRINH_TOURs.Single(n => n.MA_TOUR == maTour);
            TenTour = ct.TEN_TOUR;
            hinhAnh = ct.HINH_ANH;
            GiaTour = decimal.Parse(ct.GIA_TOUR.ToString());
            SL = 1;
        }

        public double ThanhTien
        {
            get { return SL * GiaTour; }
        }

    }
}