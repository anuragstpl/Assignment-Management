<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="AddAssignment.aspx.cs" Inherits="OnlineAssignment.AddAssignment" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <link rel="stylesheet" href="../../plugins/daterangepicker/daterangepicker.css" />
    <!-- bootstrap datepicker -->
    <link rel="stylesheet" href="../../plugins/datepicker/datepicker3.css" />
    <!-- iCheck for checkboxes and radio inputs -->
    <link rel="stylesheet" href="../../plugins/iCheck/all.css" />
    <!-- Bootstrap Color Picker -->
    <link rel="stylesheet" href="../../plugins/colorpicker/bootstrap-colorpicker.min.css" />
    <!-- Bootstrap time Picker -->
    <link rel="stylesheet" href="../../plugins/timepicker/bootstrap-timepicker.min.css" />
    <!-- Select2 -->
    <link rel="stylesheet" href="/plugins/select2/select2.min.css" />
    <div>
        <asp:Panel runat="server" ID="pnlAssignmentAdd">
            <div class="content-wrapper">
                <!-- Content Header (Page header) -->
                <section class="content-header">
                    <h1>Add Assignments
                    </h1>
                    <ol class="breadcrumb">
                        <li><a href="#"><i class="fa fa-dashboard"></i>Dashboard</a></li>
                        <li><a href="#">Assignments</a></li>
                        .
                        <li class="active">Add Assignments</li>
                    </ol>
                </section>

                <!-- General Info -->
                <section class="content">

                    <!-- SELECT2 EXAMPLE -->
                    <div class="box box-default">
                        <div class="box-header with-border">
                            <h3 class="box-title">Assignments</h3>

                            <div class="box-tools pull-right">
                                <button type="button" class="btn btn-box-tool" data-widget="collapse"><i class="fa fa-minus"></i></button>
                            </div>
                        </div>
                        <!-- /.box-header -->
                        <div class="box-body">
                            <div class="row">
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Name*</label>
                                        <asp:TextBox runat="server" ID="txtName" CssClass="form-control" required placeholder="Enter Name"></asp:TextBox>
                                    </div>
                                    <!-- /.form-group -->

                                </div>
                                <!-- /.col -->

                                <!-- /.col -->
                                <div class="col-md-6">
                                    <div class="form-group">
                                        <label>Assignment Document*</label>

                                        <asp:FileUpload ID="assignmentDoc" runat="server" CssClass="form-control" />
                                    </div>

                                </div>


                                <div class="col-md-6">
                                    <label></label>
                                    <div class="form-group">
                                        <asp:Button runat="server" ID="btnAddProduct" Text="Add Assignment" CssClass="btn btn-block btn-success" OnClick="btnAddProduct_Click" />
                                    </div>
                                </div>
                            </div>
                            <!-- /.row -->
                        </div>
                        <!-- /.box-body -->

                    </div>
                    <!-- /.box -->


                </section>
                <!-- /.content -->
                <!-- General Info -->

                <!-- /.content -->
            </div>
        </asp:Panel>


    </div>
    <asp:ListView ID="lstDocuments" runat="server" ItemPlaceholderID="groupPlaceHolder1" OnItemDataBound="lstDocuments_ItemDataBound" OnItemCommand="lstDocuments_ItemCommand" OnPagePropertiesChanging="lstDocuments_PagePropertiesChanging">
        <LayoutTemplate>
            <section class="content">
                <div class="row">
                    <div class="col-xs-12" style="width: 84%">
                        <div class="box" style="margin-left: 220px;">
                            <div class="box-header">
                                <h3 class="box-title">Assignments</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Name</th>
                                            <th>Education Level</th>
                                            <th>Subject</th>
                                            <th>Course</th>
                                            <th>View</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="6">
                                                <asp:DataPager ID="DataPager1" runat="server" PagedControlID="lstDocuments" PageSize="10">
                                                    <Fields>
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowFirstPageButton="false" ShowPreviousPageButton="true"
                                                            ShowNextPageButton="false" />
                                                        <asp:NumericPagerField ButtonType="Link" />
                                                        <asp:NextPreviousPagerField ButtonType="Link" ShowNextPageButton="true" ShowLastPageButton="false" ShowPreviousPageButton="false" />
                                                    </Fields>
                                                </asp:DataPager>
                                            </td>
                                        </tr>
                                    </tfoot>
                                </table>

                            </div>
                            <!-- /.box-body -->
                        </div>
                    </div>
                </div>
            </section>
        </LayoutTemplate>

        <ItemTemplate>
            <tr>
                <td><%# Eval("DocumentName") %></td>
                <td><%# Eval("EducationLevel") %></td>
                <td><%# Eval("Subject") %></td>
                <td><%# Eval("Course") %></td>
                <td>
                    <asp:LinkButton runat="server" ID="lnkEdit" CssClass="fa fa-eye" CommandArgument='<%# Eval("DocumentPath") %>' CommandName="Download"></asp:LinkButton>&nbsp;<asp:LinkButton runat="server" ID="lnkDocs" CssClass="fa fa-trash" OnClientClick="javascript:return confirm('Are you sure you want to delete this item?');" CommandArgument='<%# Eval("DocumentTypeID") %>' CommandName="DeleteDocument"></asp:LinkButton>
                </td>
            </tr>
        </ItemTemplate>


    </asp:ListView>
</asp:Content>
