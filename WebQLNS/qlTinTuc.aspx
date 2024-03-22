<%@ Page Title="" Language="C#" MasterPageFile="~/SizeMaster.Master" AutoEventWireup="true" CodeFile="qlTinTuc.aspx.cs" Inherits="WebQLNS.qlTinTuc" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

    <h2>Quản Lý Tin Tức</h2>

    <div class="text-right mt-2 mb-2">
        <a class="btn btn-info" href="ThemBanTin.aspx">Thêm Bản Tin</a>
    </div>
    <asp:SqlDataSource ID="sdsTinTuc" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        SelectCommand="SELECT * FROM [BanTin]" 
        DeleteCommand="DELETE FROM [BanTin] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [BanTin] ([TieuDe], [TomTat], [NoiDung], [Hinh], [NgayDang], [TrangThai], [TheLoaiID]) VALUES (@TieuDe, @TomTat, @NoiDung, @Hinh, @NgayDang, @TrangThai, @TheLoaiID)" 
        UpdateCommand="UPDATE [BanTin] SET [TieuDe] = @TieuDe, [TomTat] = @TomTat, [NoiDung] = @NoiDung, [Hinh] = @Hinh, [NgayDang] = @NgayDang, [TrangThai] = @TrangThai, [TheLoaiID] = @TheLoaiID WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TieuDe" Type="String" />
            <asp:Parameter Name="TomTat" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="TheLoaiID" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TieuDe" Type="String" />
            <asp:Parameter Name="TomTat" Type="String" />
            <asp:Parameter Name="NoiDung" Type="String" />
            <asp:Parameter Name="Hinh" Type="String" />
            <asp:Parameter Name="NgayDang" Type="DateTime" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="TheLoaiID" Type="Int32" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:GridView ID="gvBanTin" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsTinTuc" 
        AllowSorting="True" CssClass="table table-bordered" AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="TieuDe" HeaderText="Tiêu Đề"  />
            <asp:BoundField DataField="TomTat" ControlStyle-Width="100%" HeaderText="Tóm Tắt" SortExpression="TomTat" >
            </asp:BoundField>
            <asp:ImageField DataImageUrlField="hinh" HeaderText="Hình Minh Họa" DataImageUrlFormatString="~/uploads/{0}" ControlStyle-Width="100px" ></asp:ImageField>
            <asp:BoundField DataField="TheLoaiID" HeaderText="Thể Loại" SortExpression="TheLoaiID" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ButtonType="Button" />
        </Columns>
        
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle BackColor="#4682B4" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>
