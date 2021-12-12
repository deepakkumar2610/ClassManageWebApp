<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="AddFeesPayment.aspx.cs" Inherits="ClassManageApp.WebForm13" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<script type="text/javascript" language="javascript">
        function numeric(evt) {
            var charCode = (evt.which) ? evt.which : event.keyCode
            if (charCode > 31 && ((charCode >= 48 && charCode <= 57) || charCode == 46))
                return true;
            else {
                alert('Please! Enter the amount in numeric');
                return false;
            }
        }
</script>
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-3 main_content">
        <ol class="breadcrumb border " style="background-color: whitesmoke;">
            <li class="breadcrumb-item "><a href="#" class="text-dark" style="text-decoration: none; color: rgba(0,50,100,.8);">
                <i class="fas fa-home"></i>
                Admin Dashboard</a></li>
            <%--<li class="breadcrumb-item ">Students<a href="#"></a></li>--%>
            <li class="breadcrumb-item active" aria-current="page">
                <i class="far fa-credit-card"></i>
                Fees Payment</li>
        </ol>
    </div>
    <div class="container border my-2 " style="background-color: white;">
        <%--here is tab links parts--%>
        <ul class="nav nav-tabs mt-3" id="myTab" role="tablist">
            <li class="nav-item" style="position: relative;">
                <a class="nav-link active" id="fees_payment-tab" data-toggle="tab" href="#FeesPayment" role="tab" aria-controls="home" aria-selected="true">Student Details</a>
            </li>
        </ul>
        <div class="tab-pane fade show active mt-3" id="FeesPayment-tab" role="tabpanel" aria-labelledby="fees_payment-tab">
            <div class="form-row mt-3">
                <div class="form-group col-md-8">
                    <label for="staff-contact">Student Name :</label>
                    <asp:TextBox ID="Name" runat="server" class="form-control" placeholder="name-surname" Style="border: 1px solid gray;" required></asp:TextBox>
                </div>
                <div class="form-group col-md-4">
                    <label for="staff-email">Student Contact :</label>
                    <asp:TextBox ID="Contact" runat="server" onkeypress="return numeric(event)" class="form-control" placeholder="Mobile Number" Style="border: 1px solid gray;" required></asp:TextBox>
                </div>
            </div>
        </div>
        <div class="tab-pane fade show active" id="FeesPayment" role="tabpanel" aria-labelledby="fees_payment-tab">
            <div class="form-row">
                <div class="form-group col-md">
                    <label for="">Total Amount :</label>
                    <asp:TextBox ID="Amount" runat="server" onkeypress="return numeric(event)" class="form-control" placeholder="ex - 12000" Style="border: 1px solid gray;" required></asp:TextBox>
                </div>
                <div class="form-group col-md">
                    <label for="">Paid :</label>
                    <asp:TextBox ID="Paid" runat="server" onkeypress="return numeric(event)" class="form-control" placeholder="ex - 5000" Style="border: 1px solid gray;" required></asp:TextBox>
                </div>
                <div class="form-group col-md">
                    <label for="">Balance Amount :</label>
                    <asp:TextBox ID="Balance" runat="server" onkeypress="return numeric(event)" class="form-control" placeholder="ex - 7000" Style="border: 1px solid gray;" required></asp:TextBox>
                </div>

            </div>
            <div class="form-row">
                <div class="form-group col-md">
                    <label for="qualification">Payment Type :</label>
                    <asp:DropDownList ID="DdlPaymentType" runat="server" type="text" class="form-control" Style="width: 100%; border: 1px solid gray; outline: none; padding: 4px; border-radius: 3px;" required>
                        <asp:ListItem Value="Selected">-- Select Payment Method --</asp:ListItem>
                        <asp:ListItem>Cash</asp:ListItem>
                        <asp:ListItem>Cheque</asp:ListItem>
                        <asp:ListItem>Online Method</asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
        </div>
        <div class="text-right mb-3 mr-3">
            <asp:Button ID="AddPayment" runat="server" CssClass="btn btn-success" Text="Add Payment" OnClick="AddPayment_Click" />
        </div>
    </div>
</asp:Content>
