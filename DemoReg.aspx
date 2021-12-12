<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="DemoReg.aspx.cs" Inherits="ClassManageApp.WebForm6" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container border my-3">
        <ul class="nav nav-tabs mt-2" id="myTab" role="tablist">
            <li class="nav-item">
                <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">Personal Details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">Login details</a>
            </li>
            <li class="nav-item">
                <a class="nav-link" id="contact-tab" data-toggle="tab" href="#contact" role="tab" aria-controls="contact" aria-selected="false">Education details</a>
            </li>
        </ul>
        <div class="tab-content mb-2" id="myTabContent">
            <div class="tab-pane fade show active mt-3" id="home" role="tabpanel" aria-labelledby="home-tab">
                <label>First Name</label>
                <asp:TextBox ID="fname" runat="server" placeholder="First Name"></asp:TextBox>

            </div>
            <div class="tab-pane fade mt-3" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                <label>Middle Name</label>
                <asp:TextBox ID="mname" runat="server" placeholder="Middle Name"></asp:TextBox>
            </div>
            <div class="tab-pane fade mt-3" id="contact" role="tabpanel" aria-labelledby="contact-tab">
                <label>Last Name</label>
                <asp:TextBox ID="lname" runat="server" placeholder="Last Name"></asp:TextBox>

                <asp:Button ID="submit" runat="server" Text="Submit" OnClick="submit_Click"/>
            </div>
        </div>
    </div>
</asp:Content>
