<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="StaffDetails.aspx.cs" Inherits="ClassManageApp.WebForm12" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <div class="mt-3 main_content">
        <ol class="breadcrumb border " style="background-color: whitesmoke;">
            <li class="breadcrumb-item "><a href="#" class="text-dark" style="text-decoration: none;">
                <i class="fas fa-home"></i>
                Admin Dashboard</a></li>
            <%--<li class="breadcrumb-item ">Students<a href="#"></a></li>--%>
            <li class="breadcrumb-item active" aria-current="page">
                <i class="fas fa-address-book"></i>
                StaffDetails</li>
        </ol>
    </div>
    <asp:GridView ID="StaffDetailsGrid" runat="server" CssClass="table table-striped border my-3"
        AutoGenerateColumns="false" DataKeyNames="StaffID">
        <Columns>
            <asp:BoundField HeaderText="ID" DataField="StaffID" />
            <asp:BoundField HeaderText="First Name" DataField="FirstName" />
            <asp:BoundField HeaderText="Last Name" DataField="LastName" />
            <asp:BoundField HeaderText="Contact" DataField="Contact" />
            <asp:BoundField HeaderText="Email" DataField="Email" />
            <asp:BoundField HeaderText="Qualification" DataField="Qualification" />
            <asp:BoundField HeaderText="Joining Date" DataField="JoiningDate" />
        </Columns>
    </asp:GridView>

</asp:Content>
