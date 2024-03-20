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
        SelectCommand="SELECT * FROM [BanTin]" DeleteCommand="DELETE FROM [BanTin] WHERE [Id] = @Id" InsertCommand="INSERT INTO [BanTin] ([TieuDe], [TomTat], [NoiDung], [Hinh], [NgayDang], [TrangThai], [TheLoaiID]) VALUES (@TieuDe, @TomTat, @NoiDung, @Hinh, @NgayDang, @TrangThai, @TheLoaiID)" UpdateCommand="UPDATE [BanTin] SET [TieuDe] = @TieuDe, [TomTat] = @TomTat, [NoiDung] = @NoiDung, [Hinh] = @Hinh, [NgayDang] = @NgayDang, [TrangThai] = @TrangThai, [TheLoaiID] = @TheLoaiID WHERE [Id] = @Id">
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

    <asp:GridView ID="gvBanTin" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="sdsTinTuc" AllowSorting="True">
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" />
            <asp:BoundField DataField="Id" HeaderText="Id" InsertVisible="False" ReadOnly="True" SortExpression="Id" />
            <asp:BoundField DataField="TieuDe" HeaderText="TieuDe" SortExpression="TieuDe" />
            <asp:BoundField DataField="TomTat" HeaderText="TomTat" SortExpression="TomTat" />
            <asp:BoundField DataField="NoiDung" HeaderText="NoiDung" SortExpression="NoiDung" />
            <asp:BoundField DataField="Hinh" HeaderText="Hinh" SortExpression="Hinh" />
            <asp:BoundField DataField="NgayDang" HeaderText="NgayDang" SortExpression="NgayDang" />
            <asp:CheckBoxField DataField="TrangThai" HeaderText="TrangThai" SortExpression="TrangThai" />
            <asp:BoundField DataField="TheLoaiID" HeaderText="TheLoaiID" SortExpression="TheLoaiID" />
        </Columns>
    </asp:GridView>
</asp:Content>
