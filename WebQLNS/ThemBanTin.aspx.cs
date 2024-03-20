using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace WebQLNS

{
    public partial class ThemBanTin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            //string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["QLNhanVienConnectionString"].ConnectionString;
            //SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            //conn.Open();
            //string sql = "insert into bantin(tieude,tomtat,noidung,hinh,ngaydang,trangthai,theloaiid) " + "values (@tieude,@tomtat,@noidung,@hinh,@ngaydang,@trangthai,@theloaiid)";
            //SqlCommand cmd = new SqlCommand(sql, conn);

            //cmd.Parameters.AddWithValue("@tieude", txtTieuDe.Text);
            //cmd.Parameters.AddWithValue("@tomtat", txtTomTat.Text);
            //cmd.Parameters.AddWithValue("@noidung", txtNoiDung.Text);

            ////Xử lý upload Hình
            //if(FHinh.HasFile)
            //{     
            //string duong_dan = Server.MapPath("~/Uploads/") + FHinh.FileName;
            //FHinh.SaveAs(duong_dan);
            //cmd.Parameters.AddWithValue("@hinh", FHinh.FileName);
            //}
            //else
            //{
            //    cmd.Parameters.AddWithValue("@hinh", "no_image.png");
            //}

            //cmd.Parameters.AddWithValue("@ngaydang", txtngaydang.Text);
            //cmd.Parameters.AddWithValue("@trangthai", txttrangthai.Text);
            //cmd.Parameters.AddWithValue("@theloaiid", ddlTheLoai.SelectedValue);

            //if (rdNam.Checked)
            //    cmd.Parameters.AddWithValue("@phai", true);
            //else
            //    cmd.Parameters.AddWithValue("@phai", false);

            

            ////Câu truy vấn CSDL
            //if (cmd.ExecuteNonQuery() > 0)
            //    Response.Redirect("qlNhanVien.aspx");

            //else
            //    .Text = "Thêm Nhân Viên Thất Bại";
        }
    }
}