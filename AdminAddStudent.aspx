<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AdminAddStudent.aspx.cs" Inherits="ClassManageApp.WebForm7" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script type="text/javascript" language="javascript">
        function numeric(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && ((charCode >= 48 && charCode <= 57) || charCode == 46))
                return true;
            else {
                alert('Please Enter Numeric values.');
                return false;
            }
        }
    </script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid main_content">
         
        <%--<div class="bg-light text-center border mt-4">
            <label class=" text-dark mt-2" style="font-size:20px">Add New Student</label>
            </div>--%>
        <%--This section is for toolbox--%>
        <%--<div class="mt-3 border text-light " role="toolbar" aria-label="Toolbar" style="background-color: white;">
            <div class="p-2 d-flex justify-content-around">
                <div class="btn-wrapper mr-5">
                    <a href="#" class="btn btn-success btn-sm mr-3" style="border: 1px solid gray;">
                        <i class="fas fa-edit ml-2 mr-1"></i>
                        <span class="mr-3" style="font-size: 13px;">Save</span></a>
                    <a href="#" class="btn btn-danger btn-sm ml-3" style="border: 1px solid gray;">
                        <i class="fas fa-times"></i>
                        Cancel</a>
                </div>
            </div>
        </div>--%>

        <div class="container border my-2 " style="background-color: white;">
            <%--here is tab links parts--%>
            <ul class="nav nav-tabs mt-3" id="myTab" role="tablist">
                <li class="nav-item" style="position: relative;">
                    <a class="nav-link active" id="student_details-tab" data-toggle="tab" href="#student_details" role="tab" aria-controls="home" aria-selected="true">Student Details</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="class_details-tab" data-toggle="tab" href="#class_details" role="tab" aria-controls="profile" aria-selected="false">Class Details</a>
                </li>
            </ul>
        
        <%--Tabs Content Part--%>
        <div class="tab-content" id="myTabContent">
            <div class="tab-pane fade show active mt-3" id="student_details" role="tabpanel" aria-labelledby="student_details-tab">
                <div class="input_text mt-4">
                        <label for="fmlname">Student Name : </label>
                        <div class="form-row">
                            <div class="col-md">
                                <asp:TextBox ID="txtsfname" runat="server" type="text" class="form-control" placeholder="First Name" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="col-md">
                                <asp:TextBox ID="txtsmname" runat="server" type="text" class="form-control" placeholder="Middle Name" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="col-md">
                                <asp:TextBox ID="txtslname" runat="server" type="text" class="form-control" placeholder="Last Name" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div> 
                    <div class="form-row mt-3">
                        <div class="form-group col-md-4">
                            <label for="father-phonenumber">Student Contact :</label>
                            <asp:TextBox ID="txtsnumber" runat="server" onkeypress="return numeric(event)" class="form-control" placeholder="Mobile Number" Style="border: 1px solid gray;"></asp:TextBox>
                        </div>
                        <div class="form-group col-md-8">
                            <label for="father-occupation">Student Email :</label>
                            <asp:TextBox ID="txtsemail" runat="server" type="email" class="form-control" placeholder="ex : abc@gmail.com" Style="border: 1px solid gray;"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
          <div class="tab-pane fade mt-3" id="class_details" role="tabpanel" aria-labelledby="class_details-tab">
                    <div class="form-row mt-4 ">
                        <div class="form-group col-md">
                            <label>Standard</label>
                            <asp:DropDownList ID="ddlStandard" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                
                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md">
                            <label>Section</label>
                            <asp:DropDownList ID="ddlSection" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                               
                            </asp:DropDownList>
                        </div>
                    </div>
                    <div class="form-row ">
                        <div class="form-group col-md">
                            <label>Batch</label>
                            <asp:DropDownList ID="ddlBatch" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                               
                            </asp:DropDownList>
                        </div>
                        <div class="form-group col-md">
                            <%--<label>Batch</label>
                            <asp:DropDownList ID="ddlBatch" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;">
                                <asp:ListItem Value="Selected">-- Select Batch --</asp:ListItem>
                                <asp:ListItem>Batch-I</asp:ListItem>
                                <asp:ListItem>Batch-II</asp:ListItem>
                            </asp:DropDownList>--%>
                        </div>
                    </div>
                </div>   
    <asp:Button runat="server" ID="AddStudent" Text="Submit" class="btn btn-success mb-3 " ONClick="AddStudent_Click"/>
        </div>
    </div>
    </div>
</asp:Content>
