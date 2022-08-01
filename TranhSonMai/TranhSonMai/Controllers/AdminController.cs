using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using TranhSonMai.Models;

namespace TranhSonMai.Controllers
{
    public class AdminController : Controller
    {
        qlBanHangDataContext db = new qlBanHangDataContext();
        //
        // GET: /Admin/
        public ActionResult Index()
        {
            return View();
        }
        public ActionResult Khachhang( )
        {
            return View(db.KhachHangs.ToList());
        }
        public ActionResult Tranh()
        {
            return View(db.tranhsonmais.ToList());
        }
        public ActionResult Loai()
        {
            return View(db.Loaitranhsonmais.ToList());
        }
        public ActionResult nhacc()
        {
            return View(db.NhaCungCaps.ToList());
        }
        [HttpGet]
        public ActionResult Login()
        {
            return View();
        }

        [HttpPost]
        public ActionResult Login(FormCollection collection)
        {
            var tendn = collection["username"];
            var matkhau = collection["password"];
            if (String.IsNullOrEmpty(tendn))
            {
                ViewData["loi1"] = "Phải nhập tên đăng nhập";
            }
            else if (String.IsNullOrEmpty(matkhau))
            {
                ViewData["loi2"] = "Phải nhập mật khẩu";
            }
            else
            {
                Admin ad = db.Admins.SingleOrDefault(n => n.UserAdmin == tendn && n.PassAdmin == matkhau);
                if (ad != null)
                {
                    Session["Taikhoanadmin"] = ad;
                    return RedirectToAction("Index", "Admin");
                }
                else
                    ViewBag.Thongbao = "Tên đăng nhập và mật khẩu không đúng";
            }
            return View();
        }
        [HttpGet]
        public ActionResult themmoitranh()
        {
            ViewBag.Maloaitranhsonmai = new SelectList(db.Loaitranhsonmais.ToList().OrderBy(n => n.TenLoaitranhsonmai), "Maloaitranhsonmai", "Tenloaitranhsonmai");
            ViewBag.MaNCC = new SelectList(db.NhaCungCaps.ToList().OrderBy(n => n.TenNCC), "MaNCC", "TenNCC");
            return View();
        }
        [HttpPost]
        public ActionResult themmoitranh(tranhsonmai tranh,HttpPostedFileBase fileupload )
        {
            var fileName = Path.GetFileName(fileupload.FileName);
            var path = Path.Combine(Server.MapPath("~/images"), fileName);
            if (System.IO.File.Exists(path))
            {
                ViewBag.Thongbao = "Hình ảnh đã tồn tại";
            }
            else
            {
                fileupload.SaveAs(path);
            }
            tranh.AnhMinhHoa = fileName;

            db.tranhsonmais.InsertOnSubmit(tranh);
            db.SubmitChanges();
            return RedirectToAction("tranhsonmai");
        }
        [HttpGet]
        public ActionResult suatranh()
        {
            return View();
        }
        public ActionResult xoatranh()
        {
            return View();
        }
        [HttpGet]
        public ActionResult themmoikh()
        {
            return View();
        }
        [HttpGet]
        public ActionResult themmoiloai()
        {
            return View();
        }
        [HttpGet]
        public ActionResult themmoincc()
        {
            return View();
        }
    }
}