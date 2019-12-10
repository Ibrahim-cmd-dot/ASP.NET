<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Evidence_Asp.Register" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">

   
        <div class="container">
            <h4>Create a new account.</h4>
            <hr />
            <div class="row text-left">
                <div class="col-sm-6">

                    <div class="form-group">
                        <asp:Label ID="Label3" runat="server" CssClass="control-label col-sm-4" Text="Email"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="UserName" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    
                    
                    <div class="form-group">
                        <asp:Label ID="Label1" runat="server" CssClass="control-label col-sm-4" Text="Password"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="Password" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                   

                    <div class="form-group">
                        <asp:Label ID="Label2" runat="server" CssClass="control-label col-sm-4" Text="Confirm Password"></asp:Label>
                        <div class="col-sm-8">
                            <asp:TextBox ID="TextBox2" CssClass="form-control" runat="server"></asp:TextBox>
                        </div>
                    </div>
                    


                   
                    <asp:Label ID="Label4" runat="server" Text=""></asp:Label>
                    

                    <div class="form-group">
                        <div class="col-sm-offset-4 col-sm-10">
                            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Register" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    
</asp:Content>
