<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddStaff.aspx.cs" Inherits="ClassManageApp.WebForm11" %>
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
                <i class="fas fa-plus-square"></i>
                Add Staff</li>
        </ol>
    </div>
    <div class="container border my-2 " style="background-color: white;">
        <%--here is tab links parts--%>
        <ul class="nav nav-tabs mt-3" id="myTab" role="tablist">
            <li class="nav-item" style="position: relative;">
                <a class="nav-link active" id="staff_details-tab" data-toggle="tab" href="#staff_details" role="tab" aria-controls="home" aria-selected="true">Student Details</a>
            </li>
        </ul>

        <div class="tab-pane fade show active mt-3" id="staff_details" role="tabpanel" aria-labelledby="student_details-tab">
            <div class="input_text mt-4">
                <label for="StaffName">Staff Name : </label>
                <div class="form-row">
                    <div class="col-md">
                        <asp:TextBox ID="StaffFname" runat="server" type="text" class="form-control" placeholder="First Name" Style="border: 1px solid gray;" required ></asp:TextBox>
                    </div>
                    <%-- <div class="col-md">
                                <asp:TextBox ID="txtmanme" runat="server" type="text" class="form-control" placeholder="Middle Name" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>--%>
                    <div class="col-md">
                        <asp:TextBox ID="StaffLname" runat="server" type="text" class="form-control" placeholder="Last Name" Style="border: 1px solid gray;" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-row mt-3">
                    <div class="form-group col-md-4">
                        <label for="staff-contact">Staff Contact :</label>
                        <asp:TextBox ID="StaffNumber" runat="server" onkeypress="return numeric(event)" class="form-control" placeholder="Mobile Number" Style="border: 1px solid gray;" required></asp:TextBox>
                    </div>
                    <div class="form-group col-md-8">
                        <label for="staff-email">Staff Email :</label>
                        <asp:TextBox ID="StaffEmail" runat="server" type="email" class="form-control" placeholder="ex : abc@gmail.com" Style="border: 1px solid gray;" required></asp:TextBox>
                    </div>
                </div>
                <div class="form-row mt-2">
                    <div class="form-group col-md">
                        <label for="qualification">Qualification :</label>
                        <asp:DropDownList ID="DdlQualification" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;" required>
                            <asp:ListItem Value="Selected">-- Select Qualification --</asp:ListItem>
                            <asp:ListItem>BA</asp:ListItem>
                            <asp:ListItem>BCom</asp:ListItem>
                            <asp:ListItem>BSc</asp:ListItem>
                            <asp:ListItem>BSc-IT</asp:ListItem>
                            <asp:ListItem>BCA</asp:ListItem>
                            <asp:ListItem>MA</asp:ListItem>
                            <asp:ListItem>MCom</asp:ListItem>
                            <asp:ListItem>MSc</asp:ListItem>
                            <asp:ListItem>MSc-IT</asp:ListItem>
                            <asp:ListItem>MCA</asp:ListItem>
                            <asp:ListItem>MBA</asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <div class="form-group col-md">
                        <label for="teachin-subject">Teaching Subject :</label>
                        <asp:TextBox ID="TeachingSubject" runat="server" type="text" class="form-control" placeholder="Subject Name" Style="border: 1px solid gray;" required></asp:TextBox>
                    </div>
                </div>
            </div>
            <div class="text-right mr-3">
                <asp:Button runat="server" ID="SaveStaffDetails" class="btn btn-success my-3" Text="Submit" OnClick="SaveStaffDetails_Click" />
            </div>
        </div>
    </div>
</asp:Content>
