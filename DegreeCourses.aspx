<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="DegreeCourses.aspx.cs" Inherits="PurcellCompliance.DegreeCourses" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     <script src="Scripts/jquery-3.1.1.js"></script>
    <section class="content">
        <div class="row">
            <div class="col-xs-12" style="width: 84%">
                <div class="box" style="margin-left: 220px;">
                    <div class="box-header">
                        <h3 class="box-title">Degree Courses</h3>
                    </div>
                    <!-- /.box-header -->
                    <div class="box-body">
                        <table id="example2" class="table table-bordered table-hover">
                            <thead>
                                <tr>
                                    <th><b style="font-size: large;">BSc (Hons) in Information Technology</b></th>
                                    <th>Upload Assignments</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td>Object Oriented Development with Java</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton8" CssClass="Object Oriented Development with Java" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>System Development Methods</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton1" CssClass="System Development Methods" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Professional & Enterprise Development</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton2" CssClass="Professional & Enterprise Developments" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Creativity & Innovation</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton3" CssClass="Creativity & Innovation" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Research Methods for Computing and Technology</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton4" CssClass="Research Methods for Computing and Technology" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>E-Commerce</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton5" CssClass="E-Commerce" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>E-Business</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton6" CssClass="E-Business" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Probability & Statistical Modeling</td>
                                    <td>
                                        <asp:LinkButton runat="server" ID="LinkButton7" CssClass="Probability & Statistical Modeling" OnClick="lnkUploadDoc_Click">Upload Assignments</asp:LinkButton>
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
