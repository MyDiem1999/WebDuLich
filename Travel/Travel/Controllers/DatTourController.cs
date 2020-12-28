using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel.Models;

namespace Travel.Controllers
{
    public class DatTourController : Controller
    {
        // GET: DatTour
        public ActionResult DatTour()
        {
            return View();
        }

        //gửi DL đi và chuyển qua Xác nhận
        [HttpPost]
        public ActionResult DatTour(string user, string phone, string email, string address, string nation)
        {
            Infor_Customer cs = new Infor_Customer();
            cs.username = user;
            cs.numberphone = phone;
            cs.Email = email;
            cs.Address = address;
            cs.SelectNation = nation;

            return RedirectToAction("XN_DatTour", cs);
        }

        public ActionResult XN_DatTour(string user, string phone, string email, string address, string nation)
        {
            Infor_Customer cs = new Infor_Customer();
            cs.username = user;
            cs.numberphone = phone;
            cs.Email = email;
            cs.Address = address;
            cs.SelectNation = nation;

            return View(cs);
        }


    }
}