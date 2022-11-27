<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="EducationLevel.aspx.cs" Inherits="PurcellCompliance.EducationLevel" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div style="margin-left:300px;">
        <table width="100%" align="center">
            <tr>
                <td>
                    <asp:ImageButton ID="ImageButton1" runat="server" ImageUrl="~/dist/img/degree.png" OnClick="ImageButton1_Click" />
                    
                </td>
                <td>
                    <asp:ImageButton ID="ImageButton2" runat="server" ImageUrl="~/dist/img/diploma.jpg" OnClick="ImageButton2_Click" />
                </td>
            </tr>
        </table>
    </div>
</asp:Content>
