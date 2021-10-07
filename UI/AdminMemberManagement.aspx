<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="AdminMemberManagement.aspx.cs" Inherits="Book_Borrow.UI.AdminMemberManagement" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
    </script>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">



    <div class="content">

        <div class="container">
            <div class="row align-items-stretch no-gutters contact-wrap">
               
                <div class="col-md-6">
                    <div class="form h-100">
                        <h3>Books Details</h3>

                        <div class="row">
                            <div class="col-md-4 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="ID" ID="MemberIdTextBox" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-2 form-group mb-5">
                                <asp:Button CssClass="btn btn-primary" ID="GoButton" runat="server" Text="Go" OnClick="GoButton_Click" />

                            </div>
                            <div class="col-md-6 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="Full Name" ID="FullNameTextBox" runat="server" ReadOnly="True"></asp:TextBox>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="dd-mm-yyyy" ID="DoBTextBox" runat="server" ReadOnly="True"></asp:TextBox>

                            </div>
                            <div class="col-md-4 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="01xxxxxxxxxx" ID="ContactNoTextBox" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>

                            </div>
                            <div class="col-md-4 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="example@mail.com" ID="EmailIDTextBox" runat="server" TextMode="Email" ReadOnly="True"></asp:TextBox>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="Country" ID="CountryTextBox" runat="server" ReadOnly="True"></asp:TextBox>


                            </div>
                            <div class="col-md-4 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="City" ID="CityTextBox" runat="server" ReadOnly="True"></asp:TextBox>


                            </div>
                            <div class="col-md-4 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="Pincode" ID="PincodeTextBox" runat="server" TextMode="Number" ReadOnly="True"></asp:TextBox>


                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="Full Address" ID="FullAddressTextBox" runat="server" TextMode="MultiLine" ReadOnly="true" Rows="4" Columns="30"></asp:TextBox>


                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 form-group">
                                <asp:Button CssClass="btn btn-danger rounded-0 py-2 px-4" ID="DeleteUserButton" runat="server" Text="Delete User Permanently" OnClick="DeleteUser_Click" />
                            </div>
                        </div>



                    </div>
                </div>
             <div class="col-md-6">
                    <div class="contact-info h-100" style="background-image: url('../Images/lib2.jpg')">
                    </div>
                </div>
            </div>
        </div>

    </div>




    <%--<div class="col-md-7">
        <div class="card">
            <div class="card-body">
                <div class="row">
                    <div class="col text-center">
                        <h3>Member List</h3>
                    </div>
                </div>
                <div class="row">
                    <div class="col">
                        <asp:SqlDataSource ID="MemberSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:ELibraryDbContext %>" SelectCommand="SELECT [Id], [FullName], [DateOfBirth], [ContactNo], [Email], [Country], [City], [AccountStatus] FROM [Members]"></asp:SqlDataSource>
                        <asp:GridView ID="MemberGridView" CssClass="table table-striped table-bordered table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="MemberSqlDataSource" OnRowDataBound="MemberGridView_RowDataBound">
                            <Columns>
                                <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" />
                                <asp:BoundField DataField="FullName" HeaderText="Full name" SortExpression="FullName" />
                                <asp:BoundField DataField="AccountStatus" HeaderText="Account status" SortExpression="AccountStatus" />
                                <asp:BoundField DataField="ContactNo" HeaderText="Contact no." SortExpression="ContactNo" />
                                <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                                <asp:BoundField DataField="DateOfBirth" HeaderText="Date of birth" SortExpression="DateOfBirth" />
                                <asp:BoundField DataField="Country" HeaderText="Country" SortExpression="Country" />
                                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
                            </Columns>
                        </asp:GridView>
                    </div>
                </div>
            </div>
        </div>
    </div>--%>
    </div>
    </div>
</asp:Content>
