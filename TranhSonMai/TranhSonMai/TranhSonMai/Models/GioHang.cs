using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace TranhSonMai.Models
{
    public class GioHang
    {
        qlBanHangDataContext data = new qlBanHangDataContext ();
        public int iMaThuoc { set; get; }
        public string sTenThuoc { set; get; }
        public string sAnh { set; get; }
        public double dDonGia { set; get; }
        public int iSoLuong { set; get; }
        public double dThanhTien
        {
            get { return iSoLuong * dDonGia; }
        }

        public GioHang(int MaThuoc)
        {
            iMaThuoc = MaThuoc;
            tranhsonmai thuoc = data.tranhsonmais.Single(n => n.Matranhsonmai == iMaThuoc);
            sTenThuoc = thuoc.Tentranhsonmai;
            sAnh = thuoc.AnhMinhHoa;
            dDonGia = double.Parse(thuoc.GiaBan.ToString());
            iSoLuong = 1;
        }
    }
}