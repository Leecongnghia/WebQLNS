<%@ Page Title="" Language="C#" MasterPageFile="~/SizeMaster.Master" AutoEventWireup="true" CodeBehind="themNhanVien.aspx.cs" Inherits="WebQLNS.themNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
   
    <div class=" m-auto w-50 ">
        <div class="row mt-3 mb-2">
        <div class="col-md-2"> Họ Nhân Viên  </div>
            <div class="col-md-10">
                <asp:TextBox ID="txtHoNV" CssClass="form-control"  runat="server"></asp:TextBox>
       </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"> Tên Nhân Viên</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtTenNV" CssClass="form-control"   runat="server"></asp:TextBox>
       </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2">Giới Tính</div>
            <div class="col-md-10">
                <asp:RadioButton ID="rdNam" Text="Nam" GroupName="GT" Checked="true" runat="server" />
                <asp:RadioButton ID="rdNu" Text="Nữ" GroupName="GT" runat="server" />
       </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"> Ngày Sinh</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtNgaySinh" CssClass="form-control" TextMode="Date"   runat="server"></asp:TextBox>
       </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"> Nơi Sinh</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtNoiSinh" CssClass="form-control"  runat="server"></asp:TextBox>
       </div>
    </div>
       <div class="row mb-2">
        <div class="col-md-2"> Phòng</div>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlPhong" runat="server" CssClass="form-control" DataSourceID="dsPhong" DataTextField="TenPhong" DataValueField="MaPhong">
                </asp:DropDownList>
       </div>
    </div>
        <div class="row mb-2">
        <div class="col-md-2"></div>
            <div class="col-md-10">
               <asp:Button ID="btnLuu" runat="server" Text="Lưu" CssClass="btn btn-primary" OnClick="btnLuu_Click" />
                <asp:Label ID="lbThongBao" runat="server" Text="" ForeColor="#cc3300"></asp:Label>
       </div>
    </div>
  </div>
    <asp:SqlDataSource ID="dsPhong" runat="server"
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>"
        SelectCommand="SELECT * FROM [PhongBan] "></asp:SqlDataSource>
</asp:Content>
