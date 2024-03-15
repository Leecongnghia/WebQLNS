<%@ Page Title="" Language="C#" MasterPageFile="~/SizeMaster.Master" AutoEventWireup="true" CodeBehind="qlPhongBan.aspx.cs" Inherits="WebQLNS.qlPhongBan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row w-25 m-auto mt-3">
        <div class="col-md-10">
            <h6 class="fw-bold ">Chọn Phòng Ban </h6>
            <asp:DropDownList ID="ddlPhongBan" runat="server" 
                CssClass="form-control" DataSourceID="dsPhongBan" 
                DataTextField="TenPhong" DataValueField="MaPhong" AutoPostBack="True"></asp:DropDownList>
        </div>
    </div>
    <asp:GridView CssClass="text-center w-100 table-bordered mt-3 " ID="gvNVTheoPhong" 
        runat="server" AutoGenerateColumns="False" DataKeyNames="MaNV" DataSourceID="SqlNVTheoPhong" 
        CellPadding="4" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:BoundField DataField="MaNV" HeaderText="Mã NV" InsertVisible="False" ReadOnly="True" SortExpression="MaNV" />
            <asp:BoundField DataField="HoNV" HeaderText="Họ NV"  />
            <asp:BoundField DataField="TenNV" HeaderText="Tên NV"  />
            <asp:CheckBoxField DataField="Phai" HeaderText="Phái"  />
            <asp:BoundField DataField="NgaySinh" HeaderText="Ngày Sinh" DataFormatString="{0:dd/MM/yyyy}" />
            <asp:BoundField DataField="NoiSinh" HeaderText="Nơi Sinh"  />
            <asp:BoundField DataField="MaPhong" HeaderText="Mã Phòng"  />
            <asp:CommandField ButtonType="Button" ShowDeleteButton="true" />
        </Columns>
        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
        <HeaderStyle CssClass =" text-light" BackColor="#4682B4" Font-Bold="True" ForeColor="White" />
        <EditRowStyle BackColor="#2461BF" />
        <EmptyDataTemplate> 
            <div class="alert alert-warning">
                không có nhân viên phòng ban này
            </div>
            </EmptyDataTemplate>
        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
        <RowStyle BackColor="#EFF3FB" />
        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
        <SortedAscendingCellStyle BackColor="#F5F7FB" />
        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
        <SortedDescendingCellStyle BackColor="#E9EBEF" />
        <SortedDescendingHeaderStyle BackColor="#4870BE" />
    </asp:GridView>
    
    <asp:SqlDataSource ID="dsPhongBan" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        SelectCommand="SELECT * FROM [PhongBan]"></asp:SqlDataSource>
    
    <asp:SqlDataSource ID="SqlNVTheoPhong" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        DeleteCommand="DELETE FROM [NhanVien] WHERE [MaNV] = @MaNV" 
        SelectCommand="SELECT * FROM [NhanVien] WHERE ([MaPhong] = @MaPhong)" >
        <DeleteParameters>
            <asp:Parameter Name="MaNV" Type="Int32" />
        </DeleteParameters>
        <SelectParameters>
            <asp:ControlParameter ControlID="ddlPhongBan" Name="MaPhong" PropertyName="SelectedValue" Type="Int32" />
        </SelectParameters>
    </asp:SqlDataSource>
</asp:Content>
