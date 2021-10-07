<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="BookList.aspx.cs" Inherits="Book_Borrow.UI.BookList" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
    <center>
    <div class="container-lg xyzz">
        <div class="row">
            <div class="col-md-7">
                <div class="card">
                    <div class="card-body">
                        <div class="row">
                            <div class="col text-center">
                                <h3>Book Inventory List</h3>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col">
                                <asp:GridView ID="BooksGridView" CssClass="table table-striped table-bordered" runat="server" AutoGenerateColumns="False" DataKeyNames="Id" DataSourceID="">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="ID" ReadOnly="True" SortExpression="Id" />
                                        <asp:TemplateField>
                                            <ItemTemplate>
                                                <div class="container-fluid">
                                                    <div class="row">
                                                        <div class="col-lg-10">
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <span>BookName -<span>&nbsp;</span>
                                                                    <asp:Label ID="Label1" runat="server" Text='<%# Eval("Name") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                                </div>
                                                                <div class="col-12">
                                                                    <span>Author -<span>&nbsp;</span>
                                                                    <asp:Label ID="Label2" runat="server" Text='<%# Eval("Author") %>' Font-Bold="True" Font-Size="Larger"></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    <span>Language -<span>&nbsp;</span>
                                                                        <asp:Label ID="Label4" runat="server" Font-Bold="True" Text='<%# Eval("Language") %>'></asp:Label>
                                                                    </span>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                   Actual Stock -
                                                                    <asp:Label ID="Label10" runat="server" Font-Bold="True" Text='<%# Eval("ActualStock") %>'></asp:Label>
                                                                    &nbsp;| Available Stock -
                                                                  
                                                                    <asp:Label ID="Label11" runat="server" Font-Bold="True" Text='<%# Eval("CurrentStock") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                            <div class="row">
                                                                <div class="col-12">
                                                                    Description -
                                                                   
                                                                    <asp:Label ID="Label12" runat="server" Font-Bold="True" Font-Italic="True" Font-Size="Smaller" Text='<%# Eval("BookDescription") %>'></asp:Label>
                                                                </div>
                                                            </div>
                                                        </div>
                                                        <div class="col-lg-2">
                                                            <asp:Image CssClass="img-fluid" ID="Image1" runat="server" ImageUrl='<%# Eval("BookImgLink") %>' />
                                                        </div>
                                                    </div>
                                                </div>
                                            </ItemTemplate>
                                        </asp:TemplateField>

                                    </Columns>
                                </asp:GridView>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
        </center>
</asp:Content>
