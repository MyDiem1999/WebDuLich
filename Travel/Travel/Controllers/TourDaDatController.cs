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

        // GET: TourDaDat
        public List<TourDat> LaySoTour()
        {
            List<TourDat> lstTourDaDat = Session["TourDat"] as List<TourDat>;
            if (lstTourDaDat == null)
            {
                lstTourDaDat = new List<TourDat>();
                Session["TourDat"] = lstTourDaDat;
            }
            return lstTourDaDat;
        }

        public ActionResult ThemTour(int matour)
        {
            List<TourDat> lstTourDaDat = LaySoTour();
            TourDat sotour = lstTourDaDat.Find(n => n.MaTour == matour);
            if (sotour == null)
            {
                sotour = new TourDat(matour);
                lstTourDaDat.Add(sotour);
                return Redirect("TourDat");
            }
            else
            {
                sotour.SL++;
                return Redirect("TourDat");
            }
        }

        public ActionResult TourDat()
        {
            List<TourDat> lstTourDaDat = LaySoTour();
            if (lstTourDaDat.Count == 0)
                return RedirectToAction("Index", "Home");
            ViewBag.SoluongTong = SoluongTong();
            ViewBag.TongTien = TongTien();
            return View(lstTourDaDat);
        }

        public ActionResult DeleteSoTourDat(int Ma)
        {
            List<TourDat> tours = LaySoTour();
            tours.RemoveAll(x => x.MaTour == Ma);
            return Redirect("TourDat");
        }

        public ActionResult UpdateSoTourDat(FormCollection col, int Ma)
        {
            List<TourDat> tours = LaySoTour();
            foreach (var i in tours)
            {
                if (i.MaTour == Ma)
                    i.SL = int.Parse(col["Txt_SL"]);
            }
            return Redirect("TourDat");
        }

        public int SoluongTong()
        {
            int tong = 0;
            List<TourDat> tours = Session["TourDat"] as List<TourDat>;
            if (tours != null)
                tong = tours.Sum(n => n.SL);
            return tong;
        }

        public double TongTien()
        {
            double tong = 0;
            List<TourDat> tours = LaySoTour();
            if (tours != null)
                tong += tours.Sum(n => n.ThanhTien);
            return tong;
        }

        public ActionResult HienThi()
        {
            List<TourDat> lst = LaySoTour();
            int sltong = SoluongTong();
            return ViewBag.SoluongTong = sltong;
        }

        //xu ly thanh toan
     /*   public ActionResult XLTT()
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