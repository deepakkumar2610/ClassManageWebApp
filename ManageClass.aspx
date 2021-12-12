<%@ Page Title="" Language="C#" MasterPageFile="~/AdminPanel.Master" AutoEventWireup="true" CodeBehind="ManageClass.aspx.cs" Inherits="ClassManageApp.WebForm8" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
<style>
    #ManageClassTab a{
        color:rgba(0,50,100,.8);
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="mt-3 main_content">
        <ol class="breadcrumb border " style="background-color: whitesmoke;">
            <li class="breadcrumb-item "><a href="#" class="text-dark" style="text-decoration: none;">
                <i class="fas fa-home"></i>
                Admin Dashboard</a></li>
            <%--<li class="breadcrumb-item ">Students<a href="#"></a></li>--%>
            <li class="breadcrumb-item active" aria-current="page">
                <i class="fas fa-palette"></i>
                Manage Class</li>
        </ol>
    </div>

    <div class="container border" style="background-color: white;">
    <%--Tabs Link Part--%>
        <ul class="nav nav-tabs mt-3" id="ManageClassTab" role="tablist">
                <li class="nav-item" style="position: relative;">
                    <a class="nav-link active" id="StandardTab" data-toggle="tab" href="#standard_tab" role="tab" aria-controls="home" aria-selected="true">Standard</a>
                </li>
                <li class="nav-item" style="position: relative;">   
                    <a class="nav-link" id="SectionTab" data-toggle="tab" href="#section_tab" role="tab" aria-controls="home" aria-selected="true">Section</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="BatchTab" data-toggle="tab" href="#batch_tab" role="tab" aria-controls="profile" aria-selected="false">Batch</a>
                </li>
            </ul>              
     <%--Tabs Content Part--%>
            <div class="tab-content" id="ManageClassContent">
              <%--  this is for standard part--%>
                <div class="tab-pane fade show active" id="standard_tab" role="tabpanel" aria-labelledby="standard-tab">
                    <div class="">
                        <div class="form-row mt-3">
                            <div class="form-group col-md">
                                <label for="standard">Standard :</label>
                                <asp:TextBox ID="Standard" runat="server" type="text" class="form-control" placeholder="ex-Class-1" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md">
                                <label for="standard_description">Description :</label>
                                <asp:TextBox ID="StdDesc" runat="server" type="text" class="form-control" placeholder="Write Description" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-right mr-3">
                            <asp:Button ID="AddStandard" runat="server" CssClass="btn btn-success " Text="Add Standard" OnClick="AddStandard_Click1" />
                        </div>
                    </div>
                    <hr />
                    <div >
                        <asp:GridView ID="StandGrid" runat="server" CssClass="table table-striped border my-3"
                            AutoGenerateColumns="false" OnRowDeleting="StandGrid_RowDeleting" OnrowUpdating="StandGrid_RowUpdating" DataKeyNames="StandardID">
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="StandardID" />
                                <asp:BoundField HeaderText="Stanadard" DataField="StandardName" />
                                <asp:BoundField HeaderText="Description" DataField="Description" />
                                <asp:BoundField HeaderText="Added On" DataField="AddedOn" />
                                <asp:TemplateField HeaderText="Operations">
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="Remove" CommandName="Delete" class="btn btn-outline-danger btn-sm" Text="Remove" />
                                        <asp:Button runat="server" ID="Button1" CommandName="Update" class="btn btn-outline-info btn-sm" Text="Update" />
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
                <div class="tab-pane fade show" id="section_tab" role="tabpanel" aria-labelledby="section-tab">
                    <div class="">
                        <div class="form-row mt-3">
                            <div class="form-group col-md">
                                <label for="section">Section :</label>
                                <asp:TextBox ID="Section" runat="server" type="text" class="form-control" placeholder="Enter Section" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md">
                                <label for="section_description">Description :</label>
                                <asp:TextBox ID="SecDesc" runat="server" type="text" class="form-control" placeholder="Write Description" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div>
                        <div class="text-right mr-3">
                            <asp:Button ID="AddSection" runat="server" CssClass="btn btn-success " Text="Add Section" OnClick="AddSection_Click" />
                        </div>
                    </div>
                    <hr />
                    <asp:GridView ID="SectionGrid" runat="server" CssClass="table table-striped border my-3"
                            AutoGenerateColumns="false" OnRowDeleting="SectionGrid_RowDeleting" DataKeyNames="SectionID">
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="SectionID" />
                                <asp:BoundField HeaderText="Section" DataField="SectionName" />
                                <asp:BoundField HeaderText="Description" DataField="Description" />
                                <asp:BoundField HeaderText="Added On" DataField="AddedOn" />
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="Remove" CommandName="Delete" class="btn btn-outline-danger btn-sm" Text="Remove" />
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>

                </div>
                <div class="tab-pane fade show" id="batch_tab" role="tabpanel" aria-labelledby="batch-tab">
                    <div class="">
                        <div class="form-row mt-3">
                            <div class="form-group col-md">
                                <label for="batch">Batch :</label>
                                <asp:TextBox ID="Batch" runat="server" type="text" class="form-control" placeholder="ex-Batch-I" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                            <div class="form-group col-md">
                                <label for="batch_description">Description :</label>
                                <asp:TextBox ID="BatchDesc" runat="server" type="text" class="form-control" placeholder="Write Description" Style="border: 1px solid gray;"></asp:TextBox>
                            </div>
                        </div>
                         <div class="text-right mr-3">
                            <asp:Button ID="AddBatch" runat="server" CssClass="btn btn-success " Text="Add Batch" OnClick="AddBatch_Click" />
                        </div>
                    </div>
                    <hr />
                    <asp:GridView ID="BatchGrid" runat="server" CssClass="table table-striped border my-3"
                            AutoGenerateColumns="false"  DataKeyNames="BatchID" OnRowDeleting="BatchGrid_RowDeleting">
                            <Columns>
                                <asp:BoundField HeaderText="ID" DataField="BatchID" />
                                <asp:BoundField HeaderText="Batch" DataField="batchName" />
                                <asp:BoundField HeaderText="Description" DataField="Description" />
                                <asp:BoundField HeaderText="Added On" DataField="AddedOn" />
                                <asp:TemplateField HeaderText="Action">
                                    <ItemTemplate>
                                        <asp:Button runat="server" ID="RemoveBatch" CommandName="Delete" class="btn btn-outline-danger btn-sm" Text="Remove" />
                                        
                                    </ItemTemplate>
                                </asp:TemplateField>
                            </Columns>
                        </asp:GridView>
                </div>
            </div>
    </div>

<%--    <div>
        <a href="#" class="btn btn-success">Add Standard</a>
    </div>
    <div>
        <a href="#" class="btn btn-success">Add Standard</a>
    </div>--%>
</asp:Content>
