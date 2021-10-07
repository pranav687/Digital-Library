<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="MemberList.aspx.cs" Inherits="Book_Borrow.UI.MemberList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <div class="content">

        <div class="container">
            <div class="row align-items-stretch no-gutters contact-wrap">
                <div class="col-md-2"></div>
                <div class="col-md-8">
                    <div class="card">
                        <div class="card-body">
                            <div class="row">
                                <div class="col text-center">
                                    <h3>Member List</h3>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col">
                                    <asp:SqlDataSource ID="MemberSqlDataSource" runat="server" ConnectionString="<%$ ConnectionStrings:BookBorrowDbContext %>" SelectCommand="SELECT [Id], [FullName], [DateOfBirth], [ContactNo], [Email], [Country], [City], [AccountStatus] FROM [Members]"></asp:SqlDataSource>
                                    <asp:GridView ID="MemberGridView" CssClass="table table-striped table-bordered table-responsive" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="MemberSqlDataSource">
                                        <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" />
                                            <asp:BoundField DataField="FullName" HeaderText="Full name" SortExpression="FullName" />

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
                </div>
            </div>
        </div>
    </div>

</asp:Content>
