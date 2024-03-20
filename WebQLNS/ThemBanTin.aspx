﻿<%@ Page Title="" Language="C#" MasterPageFile="~/SizeMaster.Master" AutoEventWireup="true" CodeBehind="ThemBanTin.aspx.cs" Inherits="WebQLNS.ThemBanTin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="Scripts/ckeditor/ckeditor.js"></script>

    <h2>Thêm mới bản tin</h2>
     <div class=" m-auto w-50 ">
        <div class="row mt-3 mb-2">
        <div class="col-md-2"> Tiêu Đề </div>
            <div class="col-md-10">
                <asp:TextBox ID="txtTieuDe" CssClass="form-control"  runat="server"></asp:TextBox>
       </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"> Tóm Tắt</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtTomTat" CssClass="form-control" TextMode="MultiLine"   runat="server"></asp:TextBox>
       </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"> Nội Dung</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtNoiDung" CssClass="ckeditor" TextMode="MultiLine" Rows="30"  runat="server"></asp:TextBox>
       </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"> Hình Đại Diện</div>
            <div class="col-md-10">
                <asp:FileUpload ID="fileUpHinh" runat="server" />
       </div>
    </div>
    <div class="row mb-2">
        <div class="col-md-2"> Ngày Đăng</div>
            <div class="col-md-10">
                <asp:TextBox ID="txtNgayDang" CssClass="form-control"  runat="server"></asp:TextBox>
       </div>
    </div>
       <div class="row mb-2">
        <div class="col-md-2"> Trạng Thái</div>
            <div class="col-md-10">
                <asp:CheckBox ID="ckTrangThai" Text="Hiện" Checked="true" runat="server" />
       </div>
    </div>
         <div class="row mb-2">
        <div class="col-md-2"> Thể Loại</div>
            <div class="col-md-10">
                <asp:DropDownList ID="ddlTheLoai" runat="server" 
                    DataSourceID="sdsTheLoai" 
                    DataTextField="TenTheLoai" 
                    DataValueField="Id" AutoPostBack="True"></asp:DropDownList>
       </div>
    </div> 
         <div class="row mb-2">
        <div class="col-md-2"> </div>
            <div class="col-md-10">
                <asp:Button ID="btnTheLoai" runat="server" Text="Save" OnClick="btnSave_Click" />
       </div>
    </div> 
  </div>
    <asp:SqlDataSource ID="sdsTheLoai" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        SelectCommand="SELECT * FROM [TheLoai] ORDER BY [TenTheLoai], [Id]"></asp:SqlDataSource>
</asp:Content>
