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
            //Lấy giá trị chuỗi kết nối trong Web.config
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["QLNhanVienConnectionString"].ConnectionString;
            //Tạo đối tượng connect
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();
            //Tạo câu sql để thêm bản tin
            string sql = "insert into bantin(tieude,tomtat,noidung,hinh,ngaydang,trangthai,theloaiid) " +
                "values (@tieude,@tomtat,@noidung,@hinh,@ngaydang,@trangthai,@theloaiid)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            //Truyền giá trị cho các tham số trong câu lệnh sql
            cmd.Parameters.AddWithValue("@tieude", txtTieuDe.Text);
            cmd.Parameters.AddWithValue("@tomtat", txtTomTat.Text);
            cmd.Parameters.AddWithValue("@noidung", txtNoiDung.Text);

            //Xử lý upload Hình
            if (FHinh.HasFile)
            {
                //Xử lý uploads hình
                string duong_dan = Server.MapPath("~/Uploads/") + FHinh.FileName;
                FHinh.SaveAs(duong_dan);
                cmd.Parameters.AddWithValue("@hinh", FHinh.FileName);
            }
            else
            {
                cmd.Parameters.AddWithValue("@hinh", "no_image.png");
            }

            cmd.Parameters.AddWithValue("@ngaydang", txtNgayDang.Text);
            cmd.Parameters.AddWithValue("@trangthai", ckbTrangThai.Checked);
            cmd.Parameters.AddWithValue("@theloaiid", ddlTheLoai.SelectedValue);
            //Thực hiện câu lệnh truy vấn CSDL
            if (cmd.ExecuteNonQuery() > 0)
                Response.Redirect("qlTinTuc.aspx");
            else
                lbThongBao.Text = "Thao tác thêm tin thất bại";
        }
    }
}