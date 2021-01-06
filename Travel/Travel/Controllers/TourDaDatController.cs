using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using Travel.Models;

namespace Travel.Controllers
{
    public class TourDaDatController : Controller
    {
        WEB_DULICHDataContext dl = new WEB_DULICHDataContext();
        List<TourDat> lstTourDaDat;

        // GET: TourDaDat
        public List<TourDat> LaySoTourDat()
        {
            lstTourDaDat = Session["TourDat"] as List<TourDat>;
            if (lstTourDaDat == null)
            {
                lstTourDaDat = new List<TourDat>();
                Session["TourDat"] = lstTourDaDat;
            }
            return lstTourDaDat;
        }

        public ActionResult ThemTourDat(int maTour)
        {
            // lấy session ra
            lstTourDaDat = LaySoTourDat();

            //kt tồn tại trong session chưa
            TourDat sotour = lstTourDaDat.FirstOrDefault(n => n.MaTour == maTour);
            if (sotour == null)
            {
                TourDat tours = new TourDat(maTour);
                lstTourDaDat.Add(tours);
                Session["TourDat"] = lstTourDaDat;
            }
            else
            {
                sotour.SL++;
            }
            return RedirectToAction("HTTourDat");
        }

        public ActionResult HTTourDat()
        {
            lstTourDaDat = LaySoTourDat();
            if (lstTourDaDat.Count == 0)
            {
                return RedirectToAction("Index", "Home");
            }
            ViewBag.SoluongTong = TongSoLuong();
            ViewBag.TongTien = TongTien();
            return View(lstTourDaDat);
        }

        public ActionResult DeleteTourDat(int Ma)
        {
            lstTourDaDat = LaySoTourDat();
            TourDat tours = lstTourDaDat.SingleOrDefault(t => t.maTour == Ma);
            if (tours != null)
            {
                lstTourDaDat.RemoveAll(x => x.MaTour == Ma);
            }
            Session["TourDat"] = null;
            return RedirectToAction("HTTourDat");
        }

        public ActionResult UpdateSoTourDat(FormCollection col, int Ma)
        {
            lstTourDaDat = LaySoTourDat();
            foreach (var tours in lstTourDaDat)
            {
                if (tours.MaTour == Ma)
                    tours.SL = int.Parse(col["Txt_SL"]);
                Session["TourDat"] = lstTourDaDat;
            }
            return Redirect("HTTourDat");
        }

        public int TongSoLuong()
        {
            int tong = 0;
            lstTourDaDat = Session["TourDat"] as List<TourDat>;
            if (lstTourDaDat != null)
            {
                tong = lstTourDaDat.Sum(n => n.SL);
            }
            return tong;
        }

        public decimal TongTien()
        {
            decimal tongTien = 0;
            lstTourDaDat = LaySoTourDat();
            if (lstTourDaDat != null)
                tongTien += lstTourDaDat.Sum(n => n.ThanhTien);
            return tongTien;
        }

        public ActionResult HienThi()
        {
            lstTourDaDat = LaySoTourDat();
            int sltong = TongSoLuong();
            return ViewBag.SoluongTong = sltong;
        }

        //xu ly thanh toan - dat tour
        /* public ActionResult XLTT()
         {
             if (Session["KH"] == null)
             {
                 return RedirectToAction("DangNhap", "KhachHang");
             }
             else
             {
                 tbl_HoaDon hd = new tbl_HoaDon();
                 hd.NgayTao = DateTime.Now;
                 tbl_KhachHang kh = (tbl_KhachHang)Session["KH"];
                 hd.MaKH = kh.MaKhachHang;
                 mk.tbl_HoaDons.InsertOnSubmit(hd);
                 mk.SubmitChanges();

                 tbl_ChiTietHD ct;
                 List<GioHang> GH = LayGioHang();
                 foreach (var i in GH)
                 {
                     ct = new tbl_ChiTietHD();
                     ct.MaHD = hd.MaHoaDon;
                     ct.MaSP = i.Masp;
                     ct.SoLuong = i.SL;
                     mk.tbl_ChiTietHDs.InsertOnSubmit(ct);
                     mk.SubmitChanges();
                 }
             }
             return RedirectToAction("Index", "Home");
         }*/

    }
}