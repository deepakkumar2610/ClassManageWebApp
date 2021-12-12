<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="FeesPaymentDetails.aspx.cs" Inherits="ClassManageApp.WebForm15" %>
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
               <i class="far fa-credit-card"></i>
                Payment details</li>
        </ol>
    </div>
    <div class="">
        <asp:GridView ID="PreAdmissionGrid" runat="server" CssClass="table table-striped border my-3"
            AutoGenerateColumns="true"  DataKeyNames="FeesPaymentID">
            <%--<Columns>
                <asp:HyperLinkField DataNavigateUrlFields="StudentID" DataNavigateUrlFormatString="WebForm10.aspx?StudentID={0}" Text="view" />
                <asp:BoundField HeaderText="ID" DataField="PreAdmissionID" />
                <asp:BoundField HeaderText="First Name" DataField="PreAdFname" />
                <asp:BoundField HeaderText="Last Name" DataField="PreAdLname" />
                <asp:BoundField HeaderText="Contact" DataField="PreAdNumber" />
                <asp:BoundField HeaderText="Email" DataField="PreAdEmail" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                        <asp:Button runat="server" ID="View" CommandName="View" class="btn btn-outline-Secondary btn-sm" Text="View" />
                        <asp:Button runat="server" ID="ApproveStudent" class="btn btn-outline-Secondary btn-sm" OnClick="ApproveStudent_Click" Text="Approve" />
                        <asp:Button runat="server" ID="Remove" CommandName="Delete" class="btn btn-outline-Secondary btn-sm" Text="Decline" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>--%>
        </asp:GridView>
    </div>          
</asp:Content>
