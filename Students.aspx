<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="Students.aspx.cs" Inherits="ClassManageApp.Student" EnableEventValidation="false" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-3 main_content">
        <ol class="breadcrumb border " style="background-color: whitesmoke;">
            <li class="breadcrumb-item "><a href="#" class="text-dark" style="text-decoration: none;">
                <i class="fas fa-home"></i>
                Admin Panel</a></li>
            <%--<li class="breadcrumb-item ">Students<a href="#"></a></li>--%>
            <li class="breadcrumb-item active" aria-current="page">
                <i class="fas fa-user-friends"></i>
                Students</li>
        </ol>
    </div>
    <div class=" border text-light rounded" role="toolbar" aria-label="Toolbar" style="background-color: whitesmoke;">
        <div class="p-2 d-flex justify-content-around">
            <div class="btn-wrapper mr-5">
                <a href="AdminAddStudent.aspx" class="btn btn-success btn-sm " style="border: 1px solid gray;">
                    <i class="fas fa-plus-circle pl-3"></i>
                    <span class="pr-3" style="font-size: 13px;">New Student</span></a>
                <a href="#" class="btn btn-light btn-sm" style="border: 1px solid gray;">
                    <i class="fas fa-edit"></i>
                    Edit</a>
                <a href="#" class="btn btn-light btn-sm" style="border: 1px solid gray;">
                    <i class="fas fa-times"></i>
                    Delete</a>
                <a href="#" class="btn btn-light btn-sm" style="border: 1px solid gray;">
                    <i class="fas fa-check-square border-right"></i>
                    Attendance</a>
            </div>
            <div class="btn-wrapper ml-5">
                <a href="#" class="btn btn-light btn-sm" style="border: 1px solid gray;">
                    <i class="fas fa-cog  "></i>
                    Manage Academic Year</a>
            </div>
        </div>
    </div>
    <%--Area start for table--%>
    <div class="">
        <asp:GridView ID="StudentsDetailsGrid" runat="server" CssClass="table table-striped border my-3"
            AutoGenerateColumns="false" OnRowCommand="StudentsDetailsGrid_RowCommand" OnRowDeleting="StudentsDetailsGrid_RowDeleting1">
            <Columns>

                <%--<asp:HyperLinkField DataNavigateUrlFields="StudentID" DataNavigateUrlFormatString="WebForm10.aspx?StudentID={0}" Text="view" />--%>
                <asp:BoundField HeaderText="ID" DataField="StudentID" />
                <asp:BoundField HeaderText="GRNo" DataField="GRNo" />
                <asp:BoundField HeaderText="First Name" DataField="FirstName" />
                <asp:BoundField HeaderText="Last Name" DataField="LastName" />
                <asp:BoundField HeaderText="Standard" DataField="Standard" />
                <asp:BoundField HeaderText="Section" DataField="Section" />
                <asp:BoundField HeaderText="Batch" DataField="Batch" />
                <asp:TemplateField HeaderText="Actions">
                    <ItemTemplate>
                       <%--<a runat="server" CommandName="ViewStudent" CommandArgument="<%# Container.DataItemIndex %>">
                             <span class="material-icons">view_box</span></a>
                        <a runat="server" CommandName="EditStudent">
                             <span class="material-icons">check_box</span></a>
                        <a runat="server" CommandName="AddFees">
                             <span class="material-icons">check_box</span></a>
                        <a runat="server" CommandName="MarkAttendance">
                            <span class="material-icons">check_box</span></a>
                        <a runat="server" CommandName="Delete">
                            <span class="material-icons">check_box</span></a>--%>
                        <asp:Button runat="server" ID="Remove" CommandName="Delete" class="btn btn-outline-Secondary btn-sm" Text="Clear" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
    </div>
    <%-- <asp:Table runat="server" class="table table-striped border mt-3">
        <asp:TableHeaderRow>
            <asp:TableHeaderCell>Student Name</asp:TableHeaderCell>
            <asp:TableHeaderCell CssClass="">Roll</asp:TableHeaderCell>
            <asp:TableHeaderCell>Class</asp:TableHeaderCell>
            <asp:TableHeaderCell>Batch</asp:TableHeaderCell>
            <asp:TableHeaderCell>Year</asp:TableHeaderCell>
            <asp:TableHeaderCell>ID</asp:TableHeaderCell>
        </asp:TableHeaderRow>
        <asp:TableRow>
            <asp:TableCell>Deepak Vishwakarma</asp:TableCell>
            <asp:TableCell>12</asp:TableCell>
            <asp:TableCell>12th</asp:TableCell>
            <asp:TableCell>Batch-I</asp:TableCell>
            <asp:TableCell>2021</asp:TableCell>
            <asp:TableCell>1</asp:TableCell>
        </asp:TableRow>

        <%--        <asp:TableFooterRow>
            <asp:TableCell 
                    ColumnSpan="6" 
                    HorizontalAlign="Right"
                    >
                    Next Page>>>
                </asp:TableCell>
        </asp:TableFooterRow>
    </asp:Table>--%>
</asp:Content>
