using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Travel.Controllers
{
    public class HomeController : Controller
    {
        // Trang chủ
        public ActionResult Index()
        {
            return View();
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