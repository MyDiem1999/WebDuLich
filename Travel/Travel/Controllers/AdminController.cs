using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel.Models;

namespace Travel.Controllers
{
    public class AdminController : Controller
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();
        // GET: Admin
        public ActionResult Index()
        {
            return View();
        }
    }
}