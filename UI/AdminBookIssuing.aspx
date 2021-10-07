<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="AdminBookIssuing.aspx.cs" Inherits="Book_Borrow.UI.AdminBookIssuing" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("#body_StartDateTextBox").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: "2000:2025",
                dateFormat: 'dd-mm-yy'
            });
            $("#body_EndDateTextBox").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: "2000:2025",
                dateFormat: 'dd-mm-yy'
            });
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
                            <div class="col-md-6 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="Member ID" ID="MemberIdTextBox" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-4 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="Book ID" ID="BookIdTextBox" runat="server"></asp:TextBox>
                            </div>
                            <div class="col-md-2 form-group mb-5">
                                <asp:Button CssClass="btn btn-dark" ID="GoButton" runat="server" Text="Go" OnClick="GoButton_Click" />
                                </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="Member Name" ID="MemberNameTextBox" runat="server" ReadOnly="true"></asp:TextBox>
                            </div>
                            <div class="col-md-6 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="Book Name" ID="BookNameTextBox" runat="server" ReadOnly="true"></asp:TextBox>

                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group mb-5">
                                <asp:TextBox class="form-control" placeholder="Start Date" ID="StartDateTextBox" runat="server"></asp:TextBox>

                            </div>
                            <div class="col-md-6 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="End Date" ID="EndDateTextBox" runat="server"></asp:TextBox>

                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-6 form-group">
                                <asp:Button CssClass="btn btn-primary rounded-0 py-2 px-4" ID="IssueButton" runat="server" Text="Issue" OnClick="IssueButton_Click" />
                            </div>
                            <div class="col-md-6 form-group">
                                <asp:Button CssClass="btn btn-primary rounded-0 py-2 px-4" ID="ReturnButton" runat="server" Text="Return" OnClick="ReturnButton_Click" />
                            </div>
                            <asp:Label ID="ErrorLabel" runat="server" Text="" CssClass="text-danger"></asp:Label>

                        </div>
                    </div>
                </div>
                <div class="col-md-6">
                    <div class="contact-info h-100" style="background-image: url('../Images/lib3.jpg')">
                    </div>
                </div>
            </div>
        </div>

    </div>





    <div class="content">

        <div class="container">
            <div class="row align-items-stretch no-gutters contact-wrap">
                <div class="col-md-0"></div>
                <div class="col-md-12">
                    <div class="card" style="margin: 10px">
                        <div class="card-body">
                            <div class="row">
                                <div class="col text-center">
                                    <h3>Issued Book List</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:GridView ID="IssuedBookGridView" CssClass="table table-striped table-bordered" runat="server" OnRowDataBound="IssuedBookGridView_RowDataBound" AutoGenerateColumns="False">
                                        <Columns>
                                            <asp:BoundField DataField="MemberId" HeaderText="Member ID" ReadOnly="True" SortExpression="MemberId" />
                                            <asp:BoundField DataField="Member.FullName" HeaderText="Member Name" ReadOnly="True" SortExpression="Member.FullName" />
                                            <asp:BoundField DataField="BookId" HeaderText="Book ID" ReadOnly="True" SortExpression="BookId" />
                                            <asp:BoundField DataField="Book.Name" HeaderText="Book Name" ReadOnly="True" SortExpression="Book.Name" />
                                            <asp:BoundField DataField="IssueDate" HeaderText="Issue Date" ReadOnly="True" SortExpression="IssueDate" />
                                            <asp:BoundField DataField="DueDate" HeaderText="Return Date" ReadOnly="True" SortExpression="DueDate" />
                                        </Columns>
                                    </asp:GridView>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-0"></div>
            </div>
        </div>
    </div>


</asp:Content>
