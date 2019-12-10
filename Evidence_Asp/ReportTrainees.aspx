<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="ReportTrainees.aspx.cs" Inherits="Evidence_Asp.ReportTrainees" %>

<%@ Register Assembly="CrystalDecisions.Web, Version=13.0.3500.0, Culture=neutral, PublicKeyToken=692fbea5521e1304" Namespace="CrystalDecisions.Web" TagPrefix="CR" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <script src="aspnet_client/system_web/4_0_30319/crystalreportviewers13/js/crviewer/crv.js"></script>


</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContent" runat="server">
    <asp:dropdownlist runat="server" id="ddlGender" selected="--Select--" DataSourceID="SqlDataSource1" DataTextField="Gender" DataValueField="Gender"></asp:dropdownlist>

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:EvidenceDBContext %>" SelectCommand="SELECT DISTINCT [Gender] FROM [Trainee]"></asp:SqlDataSource>

    <asp:button runat="server" id="btnSave" text="ShowReport" OnClick="btnSave_Click" />
    <CR:CrystalReportViewer ID="CrystalReportViewer1" runat="server" AutoDataBind="true" />



</asp:Content>
