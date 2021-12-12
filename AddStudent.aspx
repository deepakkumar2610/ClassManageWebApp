<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddStudent.aspx.cs" Inherits="ClassManageApp.WebForm1" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid main_content">
         <div class="mt-3 main_content">
        <ol class="breadcrumb border " style="background-color: whitesmoke;">
            <li class="breadcrumb-item "><a href="#" class="text-dark" style="text-decoration: none;">
                <i class="fas fa-home"></i>
                Admin Dashboard</a></li>
            <%--<li class="breadcrumb-item ">Students<a href="#"></a></li>--%>
            <li class="breadcrumb-item active" aria-current="page">
                <i class="fa fa-plus-square" aria-hidden="true"></i>
                Add Student</li>
        </ol>
    </div>
        <%--<div class="bg-light text-center border mt-4">
            <label class=" text-dark mt-2" style="font-size:20px">Add New Student</label>
            </div>--%>
        <%--This section is for toolbox--%>
       <%-- <div class="mt-3 border text-light " role="toolbar" aria-label="Toolbar" style="background-color: whitesmoke;">
            <div class="p-2 d-flex justify-content-around">
                <div class="btn-wrapper mr-5">
                    <a href="#" class="btn btn-success btn-sm mr-3" style="border: 1px solid gray;">
                        <i class="fas fa-edit ml-3 mr-1"></i>
                        <span class="mr-4" style="font-size: 13px;">Save</span></a>
                    <a href="#" class="btn btn-light btn-sm ml-3" style="border: 1px solid gray;">
                        <i class="fas fa-times"></i>
                        Cancel</a>
                </div>
            </div>
        </div>--%>
        <%--Starting point of form--%>
        <div class="container border mt-2 " style="background-color: white;">
            <%--Tabs Link Part--%>
            <ul class="nav nav-tabs mt-3" id="myTab" role="tablist">
                <li class="nav-item" style="position: relative;">
                    <a class="nav-link active" id="personal_details-tab" data-toggle="tab" href="#personal_details" role="tab" aria-controls="home" aria-selected="true">Personal Details</a>
                </li>
                <%--<li class="nav-item" style="position: relative;">
                    <a class="nav-link" id="parents_details-tab" data-toggle="tab" href="#parent_details" role="tab" aria-controls="home" aria-selected="true">Parents Details</a>
                </li>--%>
                <%--<li class="nav-item">
                    <a class="nav-link" id="educational_details-tab" data-toggle="tab" href="#educational_details" role="tab" aria-controls="profile" aria-selected="false">Education Details</a>
                </li>--%>
                <%--<li class="nav-item">
                    <a class="nav-link" id="login_details-tab" data-toggle="tab" href="#login_details" role="tab" aria-controls="contact" aria-selected="false">Login Details</a>
                </li>--%>
            </ul>
            <%--Tabs Content Part--%>
            <div class="tab-content" id="myTabContent">
                <div class="tab-pane fade show active" id="personal_details" role="tabpanel" aria-labelledby="personal_details-tab">
                    <div class="input_text mt-4">
                        <div>
                            <label for="fmlname">Name : </label>
                            <div class="form-row">
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtfname" runat="server" type="text" class="form-control" placeholder="First Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                                <div class="col-md">
                                    <asp:TextBox ID="txtmname" runat="server" type="text" class="form-control" placeholder="Middle Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                                <div class="col-md">
                                    <asp:TextBox ID="txtlname" runat="server" type="text" class="form-control" placeholder="Last Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            
                            <div class="form-group col-md">
                                <label for="date-input">Date of Birth :</label>
                                <asp:TextBox ID="txtdob" runat="server" type="date" class="form-control" placeholder="Ex: dd/mm/yyyy" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md">
                                <label for="gender">Blood Group :</label>
                                <asp:DropDownList ID="DropDownList1" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                    <asp:ListItem Value="Selected">-- Select Blood Group --</asp:ListItem>
                                    <asp:ListItem>O+</asp:ListItem>
                                    <asp:ListItem>A+</asp:ListItem>
                                    <asp:ListItem>B+</asp:ListItem>
                                    <asp:ListItem>AB+</asp:ListItem>
                                    <asp:ListItem>O-</asp:ListItem>
                                    <asp:ListItem>A-</asp:ListItem>
                                    <asp:ListItem>B-</asp:ListItem>
                                    <asp:ListItem>AB-</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md">
                                <label for="gender">Gender :</label>
                                <asp:DropDownList ID="txtgender" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                    <asp:ListItem Value="Selected">-- Select Gender --</asp:ListItem>
                                    <asp:ListItem>Male</asp:ListItem>
                                    <asp:ListItem>Female</asp:ListItem>
                                    <asp:ListItem>Other</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                        </div>
                        <div class="form-row">
                            <%--<div class="form-group col-md">
                                <label for="date-input">Date of Birth :</label>
                                <asp:TextBox ID="txtdob" runat="server" type="date" class="form-control" placeholder="Ex: dd/mm/yyyy" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>--%>
                            <div class="form-group col-md">
                                <label for="email">Email :</label>
                                <asp:TextBox ID="txtemail" runat="server" type="email" class="form-control" placeholder="Ex: example@gmail.com" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md">
                                <label for="phonenumber">Contact :</label>
                                <asp:TextBox ID="txtnumber" runat="server" type="number" class="form-control" placeholder="Phone Number" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md">
                                <label for="religion-input">Religion</label>
                                <asp:TextBox ID="txtreligion" runat="server" type="text" class="form-control" placeholder="Name of Religion" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div>
                        <%--<div class="form-group row">
                            <label for="example-date-input" class="col-2 col-form-label">Date</label>
                            <div class="col-10">
                                <input class="form-control" type="date" value="2011-08-19" id="example-date-input">
                            </div>
                        </div>--%>
                        <div class="form-row">
                            <div class="form-group col-12">
                                <label for="address">Address :</label>
                                <asp:TextBox ID="txtaddress" runat="server" type="text" class="form-control" placeholder="1234 Main St" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div>
                        <div class="form-row">
                            <div class="form-group col-md-6">
                                <label for="inputCity">City :</label>
                                <asp:TextBox ID="txtcity" runat="server" type="text" class="form-control" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md-4">
                                <label for="inputState">State :</label>
                                <asp:DropDownList ID="txtstate" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                    <asp:ListItem>-- Select State --</asp:ListItem>
                                    <asp:ListItem>Andhra Pradesh</asp:ListItem>
                                    <asp:ListItem>Arunachal Pradesh</asp:ListItem>
                                    <asp:ListItem>Assam</asp:ListItem>
                                    <asp:ListItem>Bihar</asp:ListItem>
                                    <asp:ListItem>Chhattisgarh</asp:ListItem>
                                    <asp:ListItem>Goa</asp:ListItem>
                                    <asp:ListItem>Gujarat</asp:ListItem>
                                    <asp:ListItem>Haryana</asp:ListItem>
                                    <asp:ListItem>Himachal</asp:ListItem>
                                    <asp:ListItem>Pradesh</asp:ListItem>
                                    <asp:ListItem>Jharkhand</asp:ListItem>
                                    <asp:ListItem>Karnataka</asp:ListItem>
                                    <asp:ListItem>Kerala</asp:ListItem>
                                    <asp:ListItem>Madhya Pradesh</asp:ListItem>
                                    <asp:ListItem>Maharashtra</asp:ListItem>
                                    <asp:ListItem>Manipur</asp:ListItem>
                                    <asp:ListItem>Meghalaya</asp:ListItem>
                                    <asp:ListItem>Mizoram</asp:ListItem>
                                    <asp:ListItem>Nagaland</asp:ListItem>
                                    <asp:ListItem>Odisha</asp:ListItem>
                                    <asp:ListItem>Punjab</asp:ListItem>
                                    <asp:ListItem>Rajasthan</asp:ListItem>
                                    <asp:ListItem>Sikkim</asp:ListItem>
                                    <asp:ListItem>Tamil Nadu</asp:ListItem>
                                    <asp:ListItem>Telangana</asp:ListItem>
                                    <asp:ListItem>Tripura</asp:ListItem>
                                    <asp:ListItem>Uttar Pradesh</asp:ListItem>
                                    <asp:ListItem>Uttarakhand</asp:ListItem>
                                    <asp:ListItem>West Bengal</asp:ListItem>
                                </asp:DropDownList>
                            </div>
                            <div class="form-group col-md-2">
                                <label for="pin">Pin :</label>
                                <asp:TextBox ID="txtpin" runat="server" type="number" class="form-control" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div>

                    </div>


                </div>
                <%--<div class="tab-pane fade mt-3" id="parent_details" role="tabpanel" aria-labelledby="parent_details-tab">
                    <div class="input_text mt-4">
                        <div>
                            <label for="fmlname">Father's Name : </label>
                            <div class="form-row">
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtffname" runat="server" type="text" class="form-control" placeholder="First Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                                <div class="col-md">
                                    <asp:TextBox ID="txtfmname" runat="server" type="text" class="form-control" placeholder="Middle Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                                <div class="col-md">
                                    <asp:TextBox ID="txtflname" runat="server" type="text" class="form-control" placeholder="Last Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="form-group col-md">
                                <label for="father-phonenumber">Father's Contact :</label>
                                <asp:TextBox ID="txtfnumber" runat="server" type="name" class="form-control" placeholder="Phone Number" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md">
                                <label for="father-occupation">Father's Occupation :</label>
                                <asp:TextBox ID="txtfoccupation" runat="server" type="text" class="form-control" placeholder="Occupation" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <label for="fmlname" class="mt-2">Mother's Name : </label>
                            <div class="form-row">
                                <div class="col-md-4">
                                    <asp:TextBox ID="txtmfname" runat="server" type="text" class="form-control" placeholder="First Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                                <div class="col-md">
                                    <asp:TextBox ID="txtmmname" runat="server" type="text" class="form-control" placeholder="Middle Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                                <div class="col-md">
                                    <asp:TextBox ID="txtmlname" runat="server" type="text" class="form-control" placeholder="Last Name" Style="border: 1px solid gray;"></asp:TextBox>
                                </div>
                            </div>
                        </div>
                        <div class="form-row mt-3">
                            <div class="form-group col-md">
                                <label for="mother-phonenumber">Mother's Contact :</label>
                                <asp:TextBox ID="txtmnumber" runat="server" type="name" class="form-control" placeholder="Phone Number" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md">
                                <label for="mother-occupation">Mother's Occupation :</label>
                                <asp:TextBox ID="txtmoccupation" runat="server" type="text" class="form-control" placeholder="Occupation" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div>
                    </div>

                </div>--%>
                <%--<div class="tab-pane fade mt-3" id="educational_details" role="tabpanel" aria-labelledby="educational_details-tab">
                    <div class="form-row mt-3 ">
                        <div class="form-group col-md">
                            <asp:DropDownList ID="txtstream" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                <asp:ListItem Value="Selected">-- Select Stream --</asp:ListItem>
                                <asp:ListItem>Primary (1st - 7th)</asp:ListItem>
                                <asp:ListItem>Secondary (8th - 10th)</asp:ListItem>
                                <asp:ListItem>Arts</asp:ListItem>
                                <asp:ListItem>Commerce</asp:ListItem>
                                <asp:ListItem>Science</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md">
                            <asp:DropDownList ID="txtselectclass" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                <asp:ListItem Value="Selected">-- Select Class --</asp:ListItem>
                                <asp:ListItem>1st</asp:ListItem>
                                <asp:ListItem>2nd</asp:ListItem>
                                <asp:ListItem>3rd</asp:ListItem>
                                <asp:ListItem>4th</asp:ListItem>
                                <asp:ListItem>5th</asp:ListItem>
                                <asp:ListItem>6th</asp:ListItem>
                                <asp:ListItem>7th</asp:ListItem>
                                <asp:ListItem>8th</asp:ListItem>
                                <asp:ListItem>9th</asp:ListItem>
                                <asp:ListItem>10th</asp:ListItem>
                                <asp:ListItem>11th</asp:ListItem>
                                <asp:ListItem>12th</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-row mt-3 ">
                        <div class="form-group col-md">
                            <asp:DropDownList ID="txtmedium" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                <asp:ListItem Value="Selected">-- Select Medium --</asp:ListItem>
                                <asp:ListItem>Hindi</asp:ListItem>
                                <asp:ListItem>English</asp:ListItem>
                                <asp:ListItem>None (11th - 12th)</asp:ListItem> 
                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md">
                            <asp:DropDownList ID="txtselectbatch" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                <asp:ListItem Value="Selected">-- Select Batch --</asp:ListItem>
                                <asp:ListItem>Batch-I</asp:ListItem>
                                <asp:ListItem>Batch-II</asp:ListItem>
                            </asp:DropDownList>
                        </div>
                    </div>
                </div>--%>
                <%--<div class="tab-pane fade mt-3" id="login_details" role="tabpanel" aria-labelledby="login_details-tab">
                    <div class="form-row mt-3">
                            <div class="form-group col-md">
                                <label for="username">Username :</label>
                                <asp:TextBox ID="txtuname" runat="server" type="text" class="form-control" placeholder="Enter Username" Style="border: 1px solid gray;"></asp:TextBox>
                                <label for="password" class="mt-3">Password :</label>
                                <asp:TextBox ID="txtpass" runat="server" type="password" class="form-control" placeholder="Enter Password" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                     </div>
                    <%--<asp:Button ID="Button1" runat="server" />--%>
                </div>
            </div>

            <div class="mb-4 text-right m-3">
                <asp:Button ID="AddStudent" runat="server" class="btn-sm btn-success " Onclick="AddStudent_Click" Text="Add Student" Style="border: 1px solid gray; outline: none;" />
            </div>
        </div>
</asp:Content>
