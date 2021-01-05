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
            List<CHUONG_TRINH_TOUR> tour = dl.CHUONG_TRINH_TOURs.Where(T => T.GHI_CHU == ("Tour Tết")).ToList();
            return View(tour);
        }

        // Hiển thị danh sách các tour hiện có
        public ActionResult Tours()
        {
            List<CHUONG_TRINH_TOUR> t = dl.CHUONG_TRINH_TOURs.ToList();
            return View(t);
        }

        // Hiển thị danh sách các tour hot
        public ActionResult HotTours()
        {
            List<CHUONG_TRINH_TOUR> t = dl.CHUONG_TRINH_TOURs.ToList();
            return View(t);
        }

        // Chi tiết tour
        public ActionResult ChiTiet_Tour()
        {
            return View();
        }

        //loc du lieu
        /*public ActionResult Locds(string ThuocT, int ma)
        {
            List<DIEM_DU_LICH> diadiem = null;
            if (ThuocT == "mien")
            {
                diadiem = dl.DIEM_DU_LICHes.Where(x => x.TINH.MA_MIEN == ma).ToList();
            }
            else if (ThuocT == "tinh")
            {
                diadiem = dl.DIEM_DU_LICHes.Where(x => x.TINH.MA_TINH == ma).ToList();
            }
            return View(diadiem);
        }

        // ds các tour lọc theo miền, tỉnh
        public ActionResult dsMien()
        {
            List<MIEN> lstMien = dl.MIENs.ToList();
            return PartialView(lstMien);
        }

        public ActionResult dsTinh()
        {
            List<TINH> lstTinh = dl.TINHs.ToList();
            return PartialView(lstTinh);
        }*/

        //chi tiet tour
        public ActionResult ChiTietTour(int ma)
        {
            CHUONG_TRINH_TOUR ct = dl.CHUONG_TRINH_TOURs.FirstOrDefault(x => x.MA_TOUR == ma);
            return View(ct);
        }

    }
}