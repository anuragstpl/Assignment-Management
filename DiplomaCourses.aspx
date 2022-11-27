<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="DiplomaCourses.aspx.cs" Inherits="PurcellCompliance.DiplomaCourses" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <script src="Scripts/jquery-3.1.1.js"></script>
    <section class="content">
        <div class="row">
            <div class="col-xs-12" style="width: 84%">
                <div class="box" style="margin-left: 220px;">
                    <div class="box-header">
                        <h3 class="box-title">Diploma Courses</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th><b style="font-size: large;">Diploma in Information & Communcation Technology</b></th>
                                    <th>Upload Assignments</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>English for Academic Purposes</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton8" CssClass="English for Academic Purposes" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Numerical Skills</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton1" CssClass="Numerical Skills" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Managing Business</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton2" CssClass="Managing Business" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Practical IT Skills</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton3" CssClass="Practical IT Skills" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Professional Communication</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton4" CssClass="Professional Communication" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Academic Research Skills</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton5" CssClass="Academic Research Skills" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Computer Technology</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton6" CssClass="Computer Technology" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Numeric Methods & Logic</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton7" CssClass="Numeric Methods & Logic" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                            </tbody>
                            <tfoot>
                                <tr>
                                    <td colspan="6"></td>
                                </tr>
                            </tfoot>
                        </table>

                    </div>
                    <!-- /.box-body -->
                </div>
            </div>
        </div>
    </section>

    <asp:HiddenField ID="hdnUserType" runat="server" />

    <script type="text/javascript">
        $(document).ready(function () {
            var hidVal = $('#ContentPlaceHolder1_hdnUserType').val();
            if (hidVal == "L") {
                $("a[id^='ContentPlaceHolder1_LinkButton']").text("Upload Assignments");
            }
            else {
                $("a[id^='ContentPlaceHolder1_LinkButton']").text("View Assignments");
            }
        });
    </script>

</asp:Content>
