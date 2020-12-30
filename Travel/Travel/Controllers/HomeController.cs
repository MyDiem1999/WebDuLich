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
            /*return View();*/

            List<CHUONG_TRINH_TOUR> tour = dl.CHUONG_TRINH_TOURs.Where(T=>T.GHI_CHU==("TOUR TẾT")).ToList();
            return View(tour);
        }

        // Chi tiết tour
        public ActionResult ChiTiet_Tour()
        {
            //ViewBag.Message = "Your application description page.";

            return View();
        }

        //public ActionResult Contact()
        //{
        //    ViewBag.Message = "Your contact page.";

        //    return View();
        //}
    }
}