<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="ClassManageApp.WebForm16" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
<div class="mt-3 main_content">
        <ol class="breadcrumb border " style="background-color: whitesmoke;">
            <li class="breadcrumb-item "><a href="AdminDashboard.aspx" class="text-dark" style="text-decoration: none;">
                <i class="fas fa-home"></i>
                Admin Dashboard</a></li>
            <%--<li class="breadcrumb-item ">Students<a href="#"></a></li>--%>
            <li class="breadcrumb-item active" aria-current="page">
                <i class="fas fa-tachometer-alt"></i>
                Dashboard</li>
        </ol>
    </div>
<div class="container border my-3">
    <div class="row my-5 mx-auto">
        <div class="col-md-4"> 
            <a href="Students.aspx" class="btn p-4  w-100 text-light" style="background:rgba(0,50,100,.8);">Student</a>
        </div>
        <div class="col-md-4 "> 
            <a href="AdminAddStudent.aspx" class="btn p-4  w-100 text-light" style="background:rgba(0,50,100,.8);">Add Student</a>
        </div>
        <div class="col-md-4 "> 
            <a href="PreAdmission.aspx" class="btn p-4 w-100 text-light" style="background:rgba(0,50,100,.8);">Pre Admission</a>
        </div>
    </div>
    <div class="row my-5 mx-auto">
        <div class="col-md-4  "> 
            <a href="#" class="btn p-4 w-100 text-light" style="background:rgba(0,50,100,.8);">Dummy</a>
        </div>
        <div class="col-md-4 "> 
            <a href="#" class="btn p-4 w-100 text-light" style="background:rgba(0,50,100,.8);">Dummy</a>
        </div>
        <div class="col-md-4 "> 
            <a href="#" class="btn p-4 w-100 text-light" style="background:rgba(0,50,100,.8);">Dummy</a>
        </div>
    </div>
</div>    
    
    <%--<asp:Label ID="Label1" runat="server"></asp:Label>--%>
    <%-- <p>
            <asp:Button ID="Button1" runat="server" Height="47px" OnClick="Button1_Click"
                Text="Logout" Width="92px" />
        </p>
         <p>  --%>
</asp:Content>
