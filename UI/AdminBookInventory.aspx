<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="AdminBookInventory.aspx.cs" Inherits="Book_Borrow.UI.AdminBookInventory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script>
        $(document).ready(function () {
            $("#body_PublishDateTextBox").datepicker({
                changeMonth: true,
                changeYear: true,
                yearRange: "1950:2020",
                dateFormat: 'dd-mm-yy'
            });

            $(".table").prepend($("<thead></thead>").append($(this).find("tr:first"))).dataTable();
        });
        function readURL(input) {
            if (input.files && input.files[0]) {
                var reader = new FileReader();

                reader.onload = function (e) {
                    $('#imgview').attr('src', e.target.result);
                };

                reader.readAsDataURL(input.files[0]);
            }
        }
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
                            <div class="col-md-3 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="ID" ID="BookIdTextBox" runat="server"></asp:TextBox>

                            </div>
                            <div class="col-md-2 form-group mb-5">

                                <asp:Button CssClass="btn btn-primary" ID="GoButton" runat="server" Text="Go" OnClick="GoButton_Click" />
                            </div>
                            <div class="col-md-7 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="Book Name" ID="BookNameTextBox" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-6 form-group mb-5">

                                <asp:DropDownList CssClass="form-control" ID="LanguageDropDownList" runat="server">
                                    <asp:ListItem Text="--SELECT--" Selected="True" />
                                    <asp:ListItem Text="English" Value="English" />
                                    <asp:ListItem Text="Bangla" Value="Bangla" />
                                    <asp:ListItem Text="French" Value="French" />
                                    <asp:ListItem Text="Hindi" Value="Hindi" />
                                    <asp:ListItem Text="Urdu" Value="Urdu" />
                                    <asp:ListItem Text="German" Value="German" />
                                </asp:DropDownList>
                            </div>
                            <div class="col-md-6 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="Author Name" ID="AutherNameDropDownList" runat="server"></asp:TextBox>
                            </div>
                        </div>

                        <div class="row">
                            <div class="col-md-4 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="Actual Stock" ID="ActualStockTextBox" TextMode="Number" runat="server"></asp:TextBox>

                            </div>
                            <div class="col-md-4 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="Current Stock" ID="CurrentStockTextBox" ReadOnly="true" runat="server" TextMode="Number"></asp:TextBox>
                            </div>
                            <div class="col-md-4 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="Issued Books" ID="IssuedBooksTextBox" runat="server" ReadOnly="true" TextMode="Number"></asp:TextBox>
                            </div>
                        </div>



                        <div class="row">
                            <div class="col-md-12 form-group mb-5">

                                <asp:TextBox class="form-control" placeholder="Book Description" ID="BookDescriptionTextBox" TextMode="MultiLine" Columns="30" row="4" runat="server"></asp:TextBox>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-12 form-group mb-5">
                                <asp:FileUpload onchange="readURL(this);" CssClass="form-control" ID="BookCoverFileUpload" runat="server" />
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-md-4 form-group">
                                <asp:Button CssClass="btn btn-primary rounded-0 py-2 px-4" ID="AddBookButton" runat="server" Text="Add" OnClick="AddBookButton_Click" />
                            </div>
                            <div class="col-md-4 form-group">
                                <asp:Button CssClass="btn btn-primary rounded-0 py-2 px-4" ID="UpdateBookButton" runat="server" Text="Update" OnClick="UpdateBookButton_Click" />
                            </div>
                            <div class="col-md-4 form-group">
                                <asp:Button CssClass="btn btn-primary rounded-0 py-2 px-4" ID="DeleteBookButton" runat="server" Text="Delete" OnClick="DeleteBookButton_Click" />
                            </div>
                        </div>

                    </div>
                </div>
                <div class="col-md-6">
                    <div class="contact-info h-100" style="background-image: url('../Images/lib1.jpg')">
                    </div>
                </div>
            </div>
        </div>

    </div>





</asp:Content>
