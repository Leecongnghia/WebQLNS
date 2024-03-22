<%@ Page Title="" Language="C#" MasterPageFile="~/SizeMaster.Master" AutoEventWireup="true" CodeFile="qlTheLoai.aspx.cs" Inherits="WebQLNS.qlTheLoai" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2>Quản Lý Thể Loại Tin</h2>
    <hr />

    <asp:SqlDataSource ID="SDTTheLoai" runat="server" 
        ConnectionString="<%$ ConnectionStrings:QLNhanVienConnectionString %>" 
        DeleteCommand="DELETE FROM [TheLoai] WHERE [Id] = @Id" 
        InsertCommand="INSERT INTO [TheLoai] ([TenTheLoai], [TrangThai]) VALUES (@TenTheLoai, @TrangThai)" 
        SelectCommand="SELECT * FROM [TheLoai]" 
        UpdateCommand="UPDATE [TheLoai] SET [TenTheLoai] = @TenTheLoai, [TrangThai] = @TrangThai WHERE [Id] = @Id">
        <DeleteParameters>
            <asp:Parameter Name="Id" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="TenTheLoai" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="TenTheLoai" Type="String" />
            <asp:Parameter Name="TrangThai" Type="Boolean" />
            <asp:Parameter Name="Id" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>

    <asp:ListView ID="lvTheLoai"  runat="server"  DataKeyNames="Id" DataSourceID="SDTTheLoai"  InsertItemPosition="LastItem">
       
        <AlternatingItemTemplate>
            <tr style="background-color: #4682B4;color: #ffffff;">
               
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="TenTheLoaiLabel" runat="server" Text='<%# Eval("TenTheLoai") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
                </td>
                 <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
            </tr>
        </AlternatingItemTemplate>
        <EditItemTemplate>
            <tr style="background-color: #E2DED6;">
                
                <td>
                    <asp:Label ID="IdLabel1" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:TextBox ID="TenTheLoaiTextBox" runat="server" Text='<%# Bind("TenTheLoai") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' />
                </td>
                <td>
                    <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="Update" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Cancel" />
                </td>
            </tr>
        </EditItemTemplate>
        <EmptyDataTemplate>
            <table runat="server" style="background-color: #FFFFFF;border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;">
                <tr>
                    <td>No data was returned.</td>
                </tr>
            </table>
        </EmptyDataTemplate>
        <InsertItemTemplate>
            <tr style="background-color:#ffffff">
                <td>
                    &nbsp;</td>
                <td>
                    <asp:TextBox ID="TenTheLoaiTextBox" runat="server" Text='<%# Bind("TenTheLoai") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Bind("TrangThai") %>' />
                </td>
                <td>
                    <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="Insert" />
                    <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="Clear" />
                </td>
            </tr>
        </InsertItemTemplate>
        <ItemTemplate>
            <tr style="background-color: #ffffff;color: #333333;">
                
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="TenTheLoaiLabel" runat="server" Text='<%# Eval("TenTheLoai") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
            </tr>
        </ItemTemplate>
        <LayoutTemplate>
            <table runat="server">
                <tr runat="server">
                    <td runat="server">
                        <table id="itemPlaceholderContainer" runat="server" border="1" style="background-color: #4682B4;
                                border-collapse: collapse;border-color: #999999;border-style:none;border-width:1px;
                                font-family: Verdana, Arial, Helvetica, sans-serif;width:200%" >
                            <tr runat="server" style="background-color: #4682B4;color: #ffffff;">
                                <th runat="server">id</th>
                                <th runat="server">Tên Thể Loại</th>
                                <th runat="server">Trạng Thái</th>
                                <th runat="server"></th>
                            </tr>
                            <tr runat="server" id="itemPlaceholder">
                            </tr>
                        </table>
                    </td>
                </tr>
               
            </table>
        </LayoutTemplate>
        <SelectedItemTemplate>
            <tr style="background-color: #E2DED6;font-weight: bold;color: #333333;">
                
                <td>
                    <asp:Label ID="IdLabel" runat="server" Text='<%# Eval("Id") %>' />
                </td>
                <td>
                    <asp:Label ID="TenTheLoaiLabel" runat="server" Text='<%# Eval("TenTheLoai") %>' />
                </td>
                <td>
                    <asp:CheckBox ID="TrangThaiCheckBox" runat="server" Checked='<%# Eval("TrangThai") %>' Enabled="false" />
                </td>
                <td>
                    <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="Delete" />
                    <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="Edit" />
                </td>
            </tr>
        </SelectedItemTemplate>
    </asp:ListView>


</asp:Content>
