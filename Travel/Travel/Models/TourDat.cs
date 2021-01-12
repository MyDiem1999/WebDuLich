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
        public decimal giaTreEm;
        public int sochonguoilon;
        public int sochotreem;

        public int MaTour { get => maTour; set => maTour = value; }
        public string TenTour { get => tenTour; set => tenTour = value; }
        public string HinhAnh { get => hinhAnh; set => hinhAnh = value; }
        public decimal GiaNguoiLon { get => giaNguoiLon; set => giaNguoiLon = value; }
        public decimal GiaTreEm { get => giaTreEm; set => giaTreEm = value; }
        public int Sochonguoilon { get => sochonguoilon; set => sochonguoilon = value; }
        public int Sochotreem { get => sochotreem; set => sochotreem = value; }

        public TourDat(int matour)
        {
            maTour = matour;
            CHUONG_TRINH_TOUR ct = dl.CHUONG_TRINH_TOURs.Single(n => n.MA_TOUR == maTour);
            TenTour = ct.TEN_TOUR;
            HinhAnh = ct.HINH_ANH;
            GiaNguoiLon = decimal.Parse(ct.GIA_NGUOI_LON.ToString());
            GiaTreEm = decimal.Parse(ct.GIA_TRE_EM.ToString());

            Sochonguoilon = 1;
            Sochotreem = 0;
        }

        public TourDat()
        {
        }

        public decimal ThanhTien
        {
            get { return ((Sochonguoilon * GiaNguoiLon) + (Sochotreem * GiaTreEm)); }
        }

    }
}