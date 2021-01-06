using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Travel.Models
{
    public class ChuongTrinhTours
    {
        private int matour;
        private decimal giatreem;
        private string noidung;
        private DateTime ngaykhoihanh;
        private decimal gianguoilon;
        private string tentour;
        private string hinhanh;
        private string tenloai;
        private string chinhsach;
        private string lichtrinh;
        private string ghichu;
        private DateTime ngayketthuc;
        private int maloaitour;
        private string cauhoi;

        public int Matour { get => matour; set => matour = value; }
        public decimal Gianguoilon { get => gianguoilon; set => gianguoilon = value; }
        public decimal Giatreem { get => giatreem; set => giatreem = value; }
        public string Tentour { get => tentour; set => tentour = value; }
        public string Hinhanh { get => hinhanh; set => hinhanh = value; }
        public string Tenloai { get => tenloai; set => tenloai = value; }
        public string Chinhsach { get => chinhsach; set => chinhsach = value; }
        public string Lichtrinh { get => lichtrinh; set => lichtrinh = value; }
        public string Ghichu { get => ghichu; set => ghichu = value; }
        public string Noidung { get => noidung; set => noidung = value; }
        public DateTime Ngayketthuc { get => ngayketthuc; set => ngayketthuc = value; }
        public DateTime Ngaykhoihanh { get => ngaykhoihanh; set => ngaykhoihanh = value; }
        public int Maloaitour { get => maloaitour; set => maloaitour = value; }
        public string Cauhoi { get => cauhoi; set => cauhoi = value; }
    }
}