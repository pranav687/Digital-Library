<%@ Page Title="" Language="C#" MasterPageFile="~/UI/Site.Master" AutoEventWireup="true" CodeBehind="dashboard.aspx.cs" Inherits="Book_Borrow.UI.dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="body" runat="server">
  
    <div class="container my-5">
        <div class="row">
            <div class="col-sm-6">
                <div class="card border-dark">
                    <div class="card-body">
                        <h5 class="card-title">Book Inventory</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <asp:LinkButton class="btn  btn-secondary" ID="BookInventoryFooterLinkButton" runat="server" OnClick="BookInventoryFooterLinkButton_Click">View ➡</asp:LinkButton>&nbsp;
                        
                    </div>
                </div>
            </div>
            <div class="col-sm-6">
                <div class="card border-dark">
                    <div class="card-body">
                        <h5 class="card-title">Book Issuing </h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <asp:LinkButton class="btn  btn-secondary" ID="BookIssuingFooterLinkButton" runat="server" OnClick="BookIssuingFooterLinkButton_Click">View ➡</asp:LinkButton>&nbsp;

                    </div>
                </div>
            </div>

        </div>
    </div>
    <div class="container my-5">
        <div class="row">
            <div class="col-sm-6">
                <div class="card border-dark  mb-3">
                    <div class="card-body">
                        <h5 class="card-title">Member Management</h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <asp:LinkButton class="btn  btn-secondary" ID="MemberManagementFooterLinkButton" runat="server" OnClick="MemberManagementFooterLinkButton_Click">View ➡</asp:LinkButton>

                    </div>
                </div>
            </div>
             <div class="col-sm-6">
                <div class="card border-dark">
                    <div class="card-body">
                        <h5 class="card-title">Member List </h5>
                        <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
                        <asp:LinkButton class="btn  btn-secondary" ID="MemberList" runat="server" OnClick="MemberListLinkButton_Click">View ➡</asp:LinkButton>&nbsp;

                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
