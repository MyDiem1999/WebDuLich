using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;

namespace Travel.Controllers
{
    public class DatTourController : Controller
    {
        // GET: DatTour
        public ActionResult DatTour()
        {
            return View();
        }

       /* [HttpPost]
        public ActionResult XL_DatTour(FormCollection coll, ht)
        {
            // lay text
            var user = coll["txt_user"];
            var phone = coll["txt_numberphone"];
            var email = coll["txt_mail"];
            var address = coll["txt_address"];

            // lay dropdown
            var nation = selectValue.tostring();
            

            Information sv = new Information();
            sv.Fullname = ten;
            sv.IdStudent = ms;
            sv.Email = email;
            sv.Note = note;
            sv.Check = chk;
            //sv.FileImage = tenfile;

            sv.ChooseWorkTime = Choose;

            return RedirectToAction("XNThongTin", sv);
        }*/
        public ActionResult XN_DatTour()
        {
            return View();

          /*  return View(sv);*/
        }
    }
}