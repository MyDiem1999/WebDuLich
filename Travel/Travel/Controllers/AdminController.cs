using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel.Models;
using PagedList.Mvc;
using PagedList;
using System.IO;

namespace Travel.Controllers
{
    public class AdminController : Controller
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();
        // GET: Admin
        public ActionResult TrangChuAdmin()
        {
            return View();
        }

        public ActionResult QuanLyTour(int? page)
        {
            int pageNumber = (page ?? 1);
            int pageSize = 7;
            return View(dl.CHUONG_TRINH_TOURs.ToList().OrderBy(n => n.MA_TOUR).ToPagedList(pageNumber, pageSize));
        }
        //Thêm tour
        [HttpGet]
        public ActionResult ThemTour()
        {
            ViewBag.MA_LOAI_TOUR = new SelectList(dl.LOAI_TOURs.ToList().OrderBy(n => n.TEN_LOAI), "MA_LOAI_TOUR", "TEN_LOAI");

            return View();
        }
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult ThemTour(CHUONG_TRINH_TOUR tour, HttpPostedFileBase fileupload)
        {
            //Đưa dữ liệu vào dropdownload
            ViewBag.MA_LOAI_TOUR = new SelectList(dl.LOAI_TOURs.ToList().OrderBy(n => n.TEN_LOAI), "MA_LOAI_TOUR", "TEN_LOAI");
            //ktr đường dẫn file
            if (fileupload == null)
            {
                ViewBag.Thongbao = "Vui lòng chọn ảnh bìa";
                return (View());
            }
            //Thêm vào CSDL
            else
            {
                if (ModelState.IsValid)
                {
                    
                    //Lưu tên file
                    var fileName = Path.GetFileName(fileupload.FileName);
                    //Lưu đường dẫn file
                    var path = Path.Combine(Server.MapPath("~/Content/image"), fileName);
                    //Ktr trùng hình ảnh
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.Thongbao = "Hình ảnh đã tồn tại";
                    }
                    else
                    {
                        //Lưu hình vào đường dẫn
                        fileupload.SaveAs(path);
                    }
                    tour.HINH_ANH = fileName;
                    //Lưu vào CSDL
                    dl.CHUONG_TRINH_TOURs.InsertOnSubmit(tour);
                    dl.SubmitChanges();
                }
            }
            return RedirectToAction("QuanLyTour");
        }

        //Chi tiết tour
        public ActionResult ChiTietTour(int id)
        {
            CHUONG_TRINH_TOUR tour = dl.CHUONG_TRINH_TOURs.SingleOrDefault(n => n.MA_TOUR == id);
            ViewBag.MA_TOUR = tour.MA_TOUR;
            if (tour == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return (View(tour));
        }

        // xóa tour
        public ActionResult XoaTour(int id)
        {
            CHUONG_TRINH_TOUR tour = dl.CHUONG_TRINH_TOURs.SingleOrDefault(n => n.MA_TOUR == id);
            ViewBag.MA_TOUR = tour.MA_TOUR;
            
            if (tour == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            return (View(tour));
        }
        [HttpPost, ActionName("XoaTour")]
        public ActionResult XacNhanXoa(int id)
        {
            CHUONG_TRINH_TOUR tour = dl.CHUONG_TRINH_TOURs.SingleOrDefault(n => n.MA_TOUR == id);
            ViewBag.MA_TOUR = tour.MA_TOUR;
            if (tour == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            dl.CHUONG_TRINH_TOURs.DeleteOnSubmit(tour);
            dl.SubmitChanges();
            return RedirectToAction("QuanLyTour");
        }

        //Chỉnh sửa tour
        //[HttpGet]
        public ActionResult SuaTour(int id)
        {
            CHUONG_TRINH_TOUR tour = dl.CHUONG_TRINH_TOURs.SingleOrDefault(n => n.MA_TOUR == id);
            
            if (tour == null)
            {
                Response.StatusCode = 404;
                return null;
            }
            ViewBag.MA_LOAI_TOUR = new SelectList(dl.LOAI_TOURs.ToList().OrderBy(n => n.TEN_LOAI), "MA_LOAI_TOUR", "TEN_LOAI", tour.MA_LOAI_TOUR);
            return (View(tour));
        }
        //[HttpPost]
        //[ValidateAntiForgeryToken]
        //public ActionResult SuaTour(CHUONG_TRINH_TOUR tour, HttpPostedFileBase fileupload)
        //{
        //    //Đưa dữ liệu vào dropdownload
        //        ViewBag.MA_LOAI_TOUR = new SelectList(dl.LOAI_TOURs.ToList().OrderBy(n => n.TEN_LOAI), "MA_LOAI_TOUR", "TEN_LOAI");
        //    //ktr đường dẫn file
        //    if (fileupload == null)
        //    {
        //        ViewBag.Thongbao = "Vui lòng chọn ảnh bìa";
        //        return (View());
        //    }
        //    //Thêm vào CSDL
        //    else
        //    {
        //        if (ModelState.IsValid)
        //        {

        //            //Lưu tên file
        //            var fileName = Path.GetFileName(fileupload.FileName);
        //            //Lưu đường dẫn file
        //            var path = Path.Combine(Server.MapPath("~/image"), fileName);
        //            //Ktr trùng hình ảnh
        //            if (System.IO.File.Exists(path))
        //            {
        //                ViewBag.Thongbao = "Hình ảnh đã tồn tại";
        //            }
        //            else
        //            {
        //                //Lưu hình vào đường dẫn
        //                fileupload.SaveAs(path);
        //            }
        //            tour.HINH_ANH = fileName;
        //            //Lưu vào CSDL
        //            UpdateModel(tour);
        //            dl.SubmitChanges();

        //        }
        //    }
        //    return RedirectToAction("QuanLyTour");
        //}
        [HttpPost]
        [ValidateInput(false)]
        public ActionResult SuaTour(CHUONG_TRINH_TOUR tour, HttpPostedFileBase fileupload)
        {
            //Đưa dữ liệu vào dropdownload
            ViewBag.MA_LOAI_TOUR = new SelectList(dl.LOAI_TOURs.ToList().OrderBy(n => n.TEN_LOAI), "MA_LOAI_TOUR", "TEN_LOAI");
            //ktr đường dẫn file
            if (fileupload == null)
            {
                ViewBag.Thongbao = "Vui lòng chọn ảnh bìa";
                return (View());
            }
            //Thêm vào CSDL
            else
            {
                if (ModelState.IsValid)
                {
                    //Lưu tên file
                    var fileName = Path.GetFileName(fileupload.FileName);
                    //Lưu đường dẫn file
                    var path = Path.Combine(Server.MapPath("~/Content/image"), fileName);
                    //Ktr trùng hình ảnh
                    if (System.IO.File.Exists(path))
                    {
                        ViewBag.Thongbao = "Hình ảnh đã tồn tại";
                    }
                    else
                    {
                        //Lưu hình vào đường dẫn
                        fileupload.SaveAs(path);
                    }
                    tour.HINH_ANH = fileName;
                    //Lưu vào CSDL
                    UpdateModel(tour);
                    dl.SubmitChanges();
                }
            }
            return RedirectToAction("QuanLyTour");
        }
    }
}