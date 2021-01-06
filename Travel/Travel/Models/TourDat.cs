using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Travel.Models
{
    public class TourDat
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();

        public int maTour;
        public string tenTour;
        public string hinhAnh;
        public decimal giaNguoiLon;
        public int sL;

        public int MaTour { get => maTour; set => maTour = value; }
        public string TenTour { get => tenTour; set => tenTour = value; }
        public string HinhAnh { get => hinhAnh; set => hinhAnh = value; }
        public decimal GiaNguoiLon { get => giaNguoiLon; set => giaNguoiLon = value; }
        public int SL { get => sL; set => sL = value; }

        public TourDat(int matour)
        {
            maTour = matour;
            CHUONG_TRINH_TOUR ct = dl.CHUONG_TRINH_TOURs.Single(n => n.MA_TOUR == maTour);
            TenTour = ct.TEN_TOUR;
            hinhAnh = ct.HINH_ANH;
            giaNguoiLon = decimal.Parse(ct.GIA_NGUOI_LON.ToString());
            SL = 1;
        }

        public decimal ThanhTien
        {
            get { return SL * giaNguoiLon; }
        }
    }
}