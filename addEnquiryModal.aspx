<%--<%@ Page Title="" Language="C#" MasterPageFile="~/HomeWebPanel.Master" AutoEventWireup="true" CodeBehind="addEnquiryModal.aspx.cs" Inherits="ClassManageApp.WebForm5" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link href="CSS/addEnquiryModal.css" rel="stylesheet"/>
<%--    java script code for close button--%>

</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class=" bg-Modal">
        <div class="modal border Modal-Content">
            <form>
                <div class="">
                    <div class="form-group mb-1">
                        <label for="full-name" class="col-form-label">Name:</label>
                        <asp:TextBox runat="server" ID="txtfullname" type="text" class="form-control form-control-sm" placeholder="Full Name"></asp:TextBox>
                    </div>
                    <div class="form-group mb-1">
                        <label for="message-text" class="col-form-label">Phone:</label>
                        <asp:TextBox runat="server" ID="txtmobile" class="form-control form-control-sm" placeholder="Mobile Number"></asp:TextBox>
                    </div>
                    <div class="form-group">
                        <label for="message-text" class="col-form-label">Email:</label>
                        <asp:TextBox runat="server" ID="txtemail" type="email" class="form-control form-control-sm" placeholder="Email-ID"></asp:TextBox>
                    </div>
                </div>
                    <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
                    <asp:Button runat="server" ID="SaveData" class="btn btn-outline-info" OnClick="SaveData_Click" Text="Submit"  />
            </form>
        </div>
    </div>
<%--<script>
    function closeMe() {
        window.opener = ('https://localhost:44391/addEnquiryModal.aspx');
        window.close();
    }
</script>--%>
</asp:Content>--%>
