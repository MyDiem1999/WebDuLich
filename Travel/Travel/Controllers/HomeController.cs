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

        // Trang chủ
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
                /*                ct.giaTreEm = (decimal)item.GIA_TRE_EM;
                */
                ct.Tenloai = item.TEN_LOAI;
                ct.Hinhanh = item.HINH_ANH;
                ct.Chinhsach = item.CHINH_SACH;
                ct.Lichtrinh = item.LICH_TRINH;
                ct.Ghichu = item.GHI_CHU;
                /*ct.NGAY_KET_THUC1 = (DateTime)item.NGAY_KET_THUC;*/
                ct.Noidung = item.NOI_DUNG;
                ct.Maloaitour = (int)item.MA_LOAI_TOUR;
                lst.Add(ct);
            }
            return View(lst);

        }

        // Hiển thị danh sách các tour hiện có
        public ActionResult Tours()
        {
            List<CHUONG_TRINH_TOUR> t = dl.CHUONG_TRINH_TOURs.ToList();
            return View(t);
        }

        // Hiển thị danh sách các tour hot
        /*  public ActionResult HotTours()
          {
              List<CHUONG_TRINH_TOUR> t = dl.CHUONG_TRINH_TOURs.ToList();
              return View(t);
          }*/

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
                /*                ct.giaTreEm = (decimal)item.GIA_TRE_EM;
                */
                ct.Tenloai = item.TEN_LOAI;
                ct.Hinhanh = item.HINH_ANH;
                ct.Chinhsach = item.CHINH_SACH;
                ct.Lichtrinh = item.LICH_TRINH;
                ct.Ghichu = item.GHI_CHU;
                /*ct.NGAY_KET_THUC1 = (DateTime)item.NGAY_KET_THUC;*/
                ct.Noidung = item.NOI_DUNG;
                ct.Maloaitour = (int)item.MA_LOAI_TOUR;
                lst.Add(ct);
            }
            return View("Index", lst);
        }

    }
}