using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel.Models;
namespace Travel.Controllers
{
    public class HomeController : Controller
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();

        // Trang chủ -- hiển thị tour tết
        public ActionResult Index()
        {
            var tour = (from ctt in dl.CHUONG_TRINH_TOURs
                        from l in dl.LOAI_TOURs
                        where ctt.MA_LOAI_TOUR == l.MA_LOAI_TOUR && ctt.MA_LOAI_TOUR == 1
                        select new
                        {
                            ctt.MA_TOUR,
                            ctt.MA_LOAI_TOUR,
                            ctt.TEN_TOUR,
                            ctt.GIA_NGUOI_LON,
                            ctt.GIA_TRE_EM,
                            l.TEN_LOAI,
                            ctt.HINH_ANH,
                            ctt.CHINH_SACH,
                            ctt.LICH_TRINH,
                            ctt.GHI_CHU,
                            ctt.NGAY_KET_THUC,
                            ctt.NGAY_KHOI_HANH,
                            ctt.NOI_DUNG
                        }).ToList();
            List<ChuongTrinhTours> lst = new List<ChuongTrinhTours>();
            ChuongTrinhTours ct;
            foreach (var item in tour)
            {
                ct = new ChuongTrinhTours();
                ct.Matour = item.MA_TOUR;
                ct.Tentour = item.TEN_TOUR;
                ct.Gianguoilon = (decimal)item.GIA_NGUOI_LON;
                ct.Tenloai = item.TEN_LOAI;
                ct.Hinhanh = item.HINH_ANH;
                ct.Chinhsach = item.CHINH_SACH;
                ct.Lichtrinh = item.LICH_TRINH;
                ct.Ghichu = item.GHI_CHU;
                ct.Noidung = item.NOI_DUNG;
                ct.Maloaitour = (int)item.MA_LOAI_TOUR;
                lst.Add(ct);
            }
            return View(lst);
        }

        // Hiển thị tour hot
        public ActionResult HotTour()
        {
            var tourhot = (from cth in dl.CHUONG_TRINH_TOURs
                           from lth in dl.LOAI_TOURs
                           where cth.MA_LOAI_TOUR == lth.MA_LOAI_TOUR && cth.MA_LOAI_TOUR == 2
                           select new
                           {
                               cth.MA_TOUR,
                               cth.MA_LOAI_TOUR,
                               cth.TEN_TOUR,
                               cth.GIA_NGUOI_LON,
                               cth.GIA_TRE_EM,
                               lth.TEN_LOAI,
                               cth.HINH_ANH,
                               cth.CHINH_SACH,
                               cth.LICH_TRINH,
                               cth.GHI_CHU,
                               cth.NGAY_KET_THUC,
                               cth.NGAY_KHOI_HANH,
                               cth.NOI_DUNG
                           }).Take(1).ToList();
            List<ChuongTrinhTours> lstTourHot = new List<ChuongTrinhTours>();
            ChuongTrinhTours ctth;
            foreach (var item in tourhot)
            {
                ctth = new ChuongTrinhTours();
                ctth.Matour = item.MA_TOUR;
                ctth.Tentour = item.TEN_TOUR;
                ctth.Gianguoilon = (decimal)item.GIA_NGUOI_LON;
                ctth.Tenloai = item.TEN_LOAI;
                ctth.Hinhanh = item.HINH_ANH;
                ctth.Chinhsach = item.CHINH_SACH;
                ctth.Lichtrinh = item.LICH_TRINH;
                ctth.Ghichu = item.GHI_CHU;
                ctth.Noidung = item.NOI_DUNG;
                ctth.Maloaitour = (int)item.MA_LOAI_TOUR;
                lstTourHot.Add(ctth);
            }
            return PartialView(lstTourHot);
        }

        // Hiển thị danh sách các tour hiện có
        public ActionResult lstTour()
        {
            /*var lsttour = (from ctt in dl.CHUONG_TRINH_TOURs
                           select new
                           {
                               ctt.MA_TOUR,
                               ctt.MA_LOAI_TOUR,
                               ctt.TEN_TOUR,
                               ctt.GIA_NGUOI_LON,
                               ctt.GIA_TRE_EM,
                               ctt.HINH_ANH,
                               ctt.CHINH_SACH,
                               ctt.LICH_TRINH,
                               ctt.GHI_CHU,
                               ctt.NGAY_KET_THUC,
                               ctt.NGAY_KHOI_HANH,
                               ctt.NOI_DUNG
                           }).ToList();*/

            List<ChuongTrinhTours> lst = new List<ChuongTrinhTours>();
            ChuongTrinhTours ct;
            foreach (var item in dl.CHUONG_TRINH_TOURs.Select(t => t))
            {
                ct = new ChuongTrinhTours();
                ct.Matour = item.MA_TOUR;
                ct.Tentour = item.TEN_TOUR;
                ct.Gianguoilon = (decimal)item.GIA_NGUOI_LON;
                ct.Hinhanh = item.HINH_ANH;
                ct.Chinhsach = item.CHINH_SACH;
                ct.Lichtrinh = item.LICH_TRINH;
                ct.Ghichu = item.GHI_CHU;
                ct.Noidung = item.NOI_DUNG;
                ct.Maloaitour = (int)item.MA_LOAI_TOUR;
                lst.Add(ct);
            }
            return PartialView(lst);
        }

        //chi tiet 1 tour
        public ActionResult ChiTietTour(int ma)
        {
            var kq = dl.CHUONG_TRINH_TOURs.FirstOrDefault(x => x.MA_TOUR == ma);
            if (kq != null)
            {
                ChuongTrinhTours tour = new ChuongTrinhTours();
                tour.Tentour = kq.TEN_TOUR;
                tour.Hinhanh = kq.HINH_ANH;
                tour.Noidung = kq.NOI_DUNG;
                tour.Chinhsach = kq.CHINH_SACH;
                tour.Lichtrinh = kq.LICH_TRINH;
                tour.Ghichu = kq.GHI_CHU;
                return View(tour);
            }
            else
                return View();
        }

        //Tìm kiếm
        //[HttpPost]
        public ActionResult XLTK(FormCollection col)
        {
            var search = col["search"].Trim();
            var tour = (from ctt in dl.CHUONG_TRINH_TOURs
                        from l in dl.LOAI_TOURs
                        where ctt.MA_LOAI_TOUR == l.MA_LOAI_TOUR && ctt.TEN_TOUR.Contains(search)
                        select new
                        {
                            ctt.MA_TOUR,
                            ctt.MA_LOAI_TOUR,
                            ctt.TEN_TOUR,
                            ctt.GIA_NGUOI_LON,
                            ctt.GIA_TRE_EM,
                            l.TEN_LOAI,
                            ctt.HINH_ANH,
                            ctt.CHINH_SACH,
                            ctt.LICH_TRINH,
                            ctt.GHI_CHU,
                            ctt.NGAY_KET_THUC,
                            ctt.NGAY_KHOI_HANH,
                            ctt.NOI_DUNG
                        }).ToList();
            List<ChuongTrinhTours> lst = new List<ChuongTrinhTours>();
            ChuongTrinhTours ct;
            foreach (var item in tour)
            {
                ct = new ChuongTrinhTours();
                ct.Matour = item.MA_TOUR;
                ct.Tentour = item.TEN_TOUR;
                ct.Gianguoilon = (decimal)item.GIA_NGUOI_LON;
                ct.Tenloai = item.TEN_LOAI;
                ct.Hinhanh = item.HINH_ANH;
                ct.Chinhsach = item.CHINH_SACH;
                ct.Lichtrinh = item.LICH_TRINH;
                ct.Ghichu = item.GHI_CHU;
                ct.Noidung = item.NOI_DUNG;
                ct.Maloaitour = (int)item.MA_LOAI_TOUR;
                lst.Add(ct);
            }
            return View("Index", lst);
        }

    }
}