<%@ Page Title="" Language="C#" MasterPageFile="~/SizeMaster.Master" AutoEventWireup="true" CodeBehind="qlNhanVien.aspx.cs" Inherits="WebQLNS.qlNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 style="text-align:center"> DANH SÁCH NHÂN VIÊN</h2>
    <hr />
    <div>
        <a href="themNhanVien.aspx" class="btn text-light border border-1 border-black" style="background-color:slategray"  >Thêm Nhân Viên</a>
    </div>

    <asp:SqlDataSource ID="dsNhanVien" runat="server"  
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
        InsertCommand="INSERT INTO [NhanVien] ([HoNV], [TenNV], [Phai], [NgaySinh], [NoiSinh], [MaPhong]) VALUES (@HoNV, @TenNV, @Phai, @NgaySinh, @NoiSinh, @MaPhong)" 
        SelectCommand="SELECT * FROM [NhanVien]" 
        UpdateCommand="UPDATE [NhanVien] SET [HoNV] = @HoNV, [TenNV] = @TenNV, [Phai] = @Phai, [NgaySinh] = @NgaySinh, [NoiSinh] = @NoiSinh, [MaPhong] = @MaPhong WHERE [MaNV] = @MaNV"
        >
        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="HoNV" Type="String" />
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="HoNV" Type="String" />
            <asp:Parameter Name="TenNV" Type="String" />
            <asp:Parameter Name="Phai" Type="Boolean" />
            <asp:Parameter DbType="Date" Name="NgaySinh" />
            <asp:Parameter Name="NoiSinh" Type="String" />
            <asp:Parameter Name="MaPhong" Type="Int32" />
            <asp:Parameter Name="MaNV" Type="Int32" />
        </UpdateParameters>
</asp:SqlDataSource>

    <asp:GridView  ID="gvNhanVien" runat="server" AutoGenerateColumns="False" 
        AlternatingRowStyle-Font-Size="Large" CssClass=" table table-bordered table-hover w-100 text-center " 
        AllowCustomPaging="True" DataKeyNames="MaNV" DataSourceID="dsNhanVien" 
        AllowPaging="true"  PageSize="5" >
        <AlternatingRowStyle Font-Size="Medium" BackColor="White"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="Mã Nhân Viên" ReadOnly="True" />
            <asp:BoundField DataField="HoNV" HeaderText="Họ Nhân Viên" />
            <asp:BoundField DataField="TenNV" HeaderText="Tên Nhân Viên" />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phái" />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi Sinh" />
            <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng" />
            <asp:CommandField ShowEditButton="true" ButtonType="Button" ControlStyle-CssClass="bg-body-secondary" ShowDeleteButton="True">
                <ControlStyle CssClass="text-black" BackColor="Gainsboro"></ControlStyle>
            </asp:CommandField>
        </Columns>
        <PagerSettings FirstPageText="Đầu" PreviousPageText="Trước" 
            NextPageText="Sau" LastPageText="Cuối"  />
        <EditRowStyle BackColor="#2461BF" />
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle CssClass=" text-light" BackColor="#4682B4" Font-Bold="True" ForeColor="White"/>
        <PagerStyle HorizontalAlign="Center" CssClass="pagination-ys" BackColor="#2461BF" ForeColor="White"  />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
</asp:Content>

