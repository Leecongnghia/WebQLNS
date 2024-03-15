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
    public partial class themNhanVien : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            string chuoi_ket_noi = ConfigurationManager.ConnectionStrings["QLNhanVienConnectionString"].ConnectionString;
            SqlConnection conn = new SqlConnection(chuoi_ket_noi);
            conn.Open();
            string sql = "insert into nhanvien(honv,tennv,phai,ngaysinh,noisinh,maphong) values (@honv,@tennv,@phai,@ngaysinh,@noisinh,@maphong)";
            SqlCommand cmd = new SqlCommand(sql, conn);
            cmd.Parameters.AddWithValue("@honv", txtHoNV.Text);
            cmd.Parameters.AddWithValue("@tennv", txtTenNV.Text);
            if (rdNam.Checked)
                cmd.Parameters.AddWithValue("@phai", true);
            else
                cmd.Parameters.AddWithValue("@phai", false);

            cmd.Parameters.AddWithValue("@ngaysinh", txtNgaySinh.Text);
            cmd.Parameters.AddWithValue("@noisinh", txtNoiSinh.Text);
            cmd.Parameters.AddWithValue("@maphong", ddlPhong.SelectedValue);

            //Câu truy vấn CSDL
            if (cmd.ExecuteNonQuery() > 0)
                Response.Redirect("qlNhanVien.aspx");
                lbThongBao.Text = "Thêm Nhân Viên Thành Công";              
            else           
                lbThongBao.Text = "Thêm Nhân Viên Thất Bại";
        }
    }
}