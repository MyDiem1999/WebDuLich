using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Travel.Models
{
    public class TourDaDat
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();

        private int makh;
        private string tentour;
        private decimal giaNguoiLon;
        private decimal giaTreEm;
        private int sochonguoilon;
        private int sochotreem;
        private decimal phuthu;
        private DateTime ngaydat;
        private int matour;

        public int Matour { get => matour; set => matour = value; }
        public int Makh { get => makh; set => makh = value; }
        public string Tentour { get => tentour; set => tentour = value; }
        public decimal GiaNguoiLon { get => giaNguoiLon; set => giaNguoiLon = value; }
        public decimal GiaTreEm { get => giaTreEm; set => giaTreEm = value; }
        public int Sochonguoilon { get => sochonguoilon; set => sochonguoilon = value; }
        public int Sochotreem { get => sochotreem; set => sochotreem = value; }
        public decimal Phuthu { get => phuthu; set => phuthu = value; }
        public DateTime Ngaydat { get => ngaydat; set => ngaydat = value; }
    }
}