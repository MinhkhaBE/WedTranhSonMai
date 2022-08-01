using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using PagedList;
using PagedList.Mvc;
using TranhSonMai.Models;

namespace TranhSonMai.Controllers
{
    public class SonMaiController : Controller
    {
        qlBanHangDataContext data = new qlBanHangDataContext();
        //
        // GET: /SonMai/
        private List<tranhsonmai> LayThuocMoi(int cuont)
        {
            return data.tranhsonmais.OrderByDescending(m => m.NgayNhap).Take(cuont).ToList();
        }
        public ActionResult Index(int? page)
        {
            int pageSize = 8;
            int pageNum = (page ?? 1);

            var thuocmoi = LayThuocMoi(100);
            return View(thuocmoi.ToPagedList(pageNum, pageSize));
        }
        public ActionResult ChuDe()
        {
            var loaithuoc = from lt in data.Loaitranhsonmais select lt;
            return PartialView(loaithuoc);
        }
        public ActionResult NhaCC()
        {
            var ncc = from lt in data.NhaCungCaps select lt;
            return PartialView(ncc);
        }
        public ActionResult SPTheoLoai(int id, int? page)
        {
            int pageSize = 8;
            int pageNum = (page ?? 1);

            var thuoc = from s in data.tranhsonmais where s.MaLoaitranhsonmai == id select s;
            return View(thuoc.ToPagedList(pageNum, pageSize));
        }
        public ActionResult SPTheoNhaCC(int id, int? page)
        {
            int pageSize = 8;
            int pageNum = (page ?? 1);

            var ncc = from s in data.tranhsonmais where s.MaNCC == id select s;
            return View(ncc.ToPagedList(pageNum, pageSize));
        }
        public ActionResult Details(int id)
        {
            var thuoc = from s in data.tranhsonmais where s.Matranhsonmai == id select s;
            return View(thuoc.Single());
        }
        public ActionResult demo()
        {
            return View();
        }
	}
}