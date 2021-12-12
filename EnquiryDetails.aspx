<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="EnquiryDetails.aspx.cs" Inherits="ClassManageApp.WebForm9" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="container border mt-2">
    <div class="mt-3 main_content">
        <ol class="breadcrumb border " style="background-color: whitesmoke;">
            <li class="breadcrumb-item "><a href="#" class="text-dark" style="text-decoration: none;">
                <i class="fas fa-home"></i>
                Admin Panel</a></li>
            <%--<li class="breadcrumb-item ">Students<a href="#"></a></li>--%>
            <li class="breadcrumb-item active" aria-current="page">
                <i class="fas fa-user-friends"></i>
                Enquiry Details</li>
        </ol>
    </div>
    <asp:GridView runat="server" ID="EnquiryGrid" AutoGenerateColumns="false" 
        OnRowDeleting="EnquiryGrid_RowDeleting"
        dataKeyNames="Enquiry_id"
        CssClass="table table-striped border my-3">
        
        <Columns>
            <asp:BoundField HeaderText="Enquiry ID" DataField="Enquiry_id"/>
            <asp:BoundField HeaderText="Full Name" DataField="Fullname"/>
            <asp:BoundField HeaderText="Contact No." DataField="Mobile"/>
            <asp:BoundField HeaderText="Email ID" DataField="Email"/>
            <asp:TemplateField HeaderText="Actions">
                <ItemTemplate>
                    <asp:Button runat="server" ID="Remove" CommandName="Delete" class="btn btn-outline-danger btn-sm" Text="Remove"/>
                </ItemTemplate>
            </asp:TemplateField>      
        </Columns>
    </asp:GridView>
</div>
</asp:Content>
