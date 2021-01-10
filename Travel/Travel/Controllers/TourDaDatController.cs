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
                sotour.Sochonguoilon++;
                sotour.Sochotreem++;
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

        // xóa tour đã chọn
        public ActionResult DeleteTourDat(int Ma)
        {
            lstTourDaDat = LaySoTourDat();
            TourDat tours = lstTourDaDat.SingleOrDefault(t => t.maTour == Ma);
            if (tours != null)
            {
                int index = isExisting(Ma);
                List<TourDat> cart = (List<TourDat>)Session["TourDat"];

                /* int index = lstTourDaDat.FindIndex(x => x.MaTour == Ma);  */
                lstTourDaDat.RemoveAt(index);
                Session["TourDat"] = cart;
            }

            return RedirectToAction("HTTourDat");
        }

        // chưa update đc
        public ActionResult UpdateSoTourDat(FormCollection col, int Ma)
        {
            lstTourDaDat = LaySoTourDat();

            foreach (var tours in lstTourDaDat)
            {
                if (tours.MaTour == Ma)
                {
                    tours.Sochonguoilon = int.Parse(col["Txt_SLNL"]);
                    /*tours.Sochotreem = int.Parse(col["Txt_SLTE"]);*/
                    Session["TourDat"] = lstTourDaDat;
                }
            }

            return Redirect("HTTourDat");
        }
        // ktra session TourDat
        private int isExisting(int id)
        {
            List<TourDat> cart = (List<TourDat>)Session["TourDat"];
            for (int i = 0; i < cart.Count; i++)
                if (cart[i].MaTour == id)
                    return i;
            return -1;
        }

        public int TongSoLuong()
        {
            int tong = 0;
            lstTourDaDat = Session["TourDat"] as List<TourDat>;
            if (lstTourDaDat != null)
            {
                tong = lstTourDaDat.Sum(n => (n.Sochonguoilon + n.Sochotreem));
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
        public ActionResult XL_DatTour()
        {
            DAT_TOUR dat = new DAT_TOUR();

            // kt session KH và lưu vào đặt tour
            KHACH_HANG kh = (KHACH_HANG)Session["KH"];
            dat.MA_KH = kh.MA_KH;

            lstTourDaDat = LaySoTourDat();
            foreach (var tour in lstTourDaDat)
            {
                dat.NGAY_DAT = DateTime.Now;
                dat.MA_TOUR = tour.MaTour;
                dat.GIA_NGUOI_LON = tour.GiaNguoiLon;
                dat.GIA_TRE_EM = tour.GiaTreEm;
                dat.SO_CHO_NGUOI_LON = tour.Sochonguoilon;
                dat.SO_CHO_TRE_EM = tour.Sochotreem;
                dat.THANH_TIEN = tour.ThanhTien;

                dl.DAT_TOURs.InsertOnSubmit(dat);

            }
            dl.SubmitChanges();
            Session["TourDat"] = null;

            return RedirectToAction("Index", "Home");
        }
    }
}