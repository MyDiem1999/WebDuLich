using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Travel.Models
{
    public class ChuongTrinhTours
    {
        public int matour;
        public decimal giatreem;
        public string noidung;
        public DateTime ngaykhoihanh;
        public decimal gianguoilon;
        public string tentour;
        public string hinhanh;
        public string tenloai;
        public string chinhsach;
        public string lichtrinh;
        public string ghichu;
        public DateTime ngayketthuc;
        public int maloaitour;
        public string cauhoi;

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