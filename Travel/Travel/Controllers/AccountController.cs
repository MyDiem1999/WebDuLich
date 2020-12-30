using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel.Models;

namespace Travel.Controllers
{
    public class AccountController : Controller
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();

        // GET: Account
        // Đăng nhập
        [HttpGet]
        public ActionResult DangNhap()
        {
            return View();
        }

        [HttpPost]
        public ActionResult XL_DangNhap(FormCollection col, KHACH_HANG kh)
        {
            var kh1 = dl.KHACH_HANGs.FirstOrDefault(x => x.TAI_KHOAN_KH == col["_account"] && x.MAT_KHAU_KH == col["_password"]);
            if (kh1 == null)
            {
                if (dl.KHACH_HANGs.FirstOrDefault(x => x.TAI_KHOAN_KH == col["_account"]) == null)
                    ViewData["ID"] = "Sai tài khoản đăng nhập!";
                if (dl.KHACH_HANGs.FirstOrDefault(x => x.MAT_KHAU_KH == col["_password"]) == null)
                    ViewData["MK"] = "Sai mật khẩu";
                return View("DangNhap");
            }
            else
            {
                Session["KH"] = kh;
                return RedirectToAction("Index", "Home");
            }
        }

        // Đăng xuất
        public ActionResult LogOut()
        {
            Session["KH"] = null;
            return RedirectToAction("Index", "Home");
        }

        // Đăng ký
        [HttpGet]
        public ActionResult DangKy(string taikhoan)
        {
            if (taikhoan != null)
            {
                if (dl.KHACH_HANGs.FirstOrDefault(x => x.TAI_KHOAN_KH == taikhoan) != null)
                {
                    ViewData["TB_DK"] = "Tài khoản này đã được sử dụng!";
                    User u = new User();
                    u.Taikhoan = taikhoan;
                    /*u.Id = id;
                    u.Email = email;
                    u.Pass = pass;
                    u.Sdt = sdt;
                    u.Dc = dc;*/
                    return RedirectToAction("DangKy", u);
                }
            }
            else
                return View();
        }

        [HttpPost]
        public ActionResult XL_DangKy(FormCollection col, KHACH_HANG kh)
        {
            var kh1 = dl.KHACH_HANGs.FirstOrDefault(x => x.TAI_KHOAN_KH == col["_userID"]);
            if (kh1 == null)
            {
                kh = new KHACH_HANG();
                kh.TEN_KH = col["_username"];
                kh.TAI_KHOAN_KH = col["_userID"];
                kh.EMAIL = col["_email"];
                kh.MAT_KHAU_KH = col["_password"];
                kh.DIEN_THOAI = col["_phone"];
                kh.DIA_CHI = col["_address"];
                dl.KHACH_HANGs.InsertOnSubmit(kh);
                dl.SubmitChanges();
                return RedirectToAction("DangNhap", new { kh=kh1 });
            }
            else
                return RedirectToAction("DangKy", new { taikhoan = col["_userID"].ToString() });
        }
    }

}