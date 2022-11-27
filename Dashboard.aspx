<%@ Page Title="" Language="C#" MasterPageFile="~/ComplianceMaster.Master" AutoEventWireup="true" CodeBehind="Dashboard.aspx.cs" Inherits="PurcellCompliance.Dashboard" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:ListView ID="lstCustomers" runat="server" ItemPlaceholderID="groupPlaceHolder1">
        <LayoutTemplate>
            <section class="content">
                <div class="row" style="margin-left: 220px;">
                    <div class="col-xs-12">
                        <div class="box">
                            <div class="box-header">
                                <h3 class="box-title">Dashboard</h3>
                            </div>
                            <!-- /.box-header -->
                            <div class="box-body">
                                <table id="example2" class="table table-bordered table-hover">
                                    <thead>
                                        <tr>
                                            <th>Username</th>
                                            <th>Name</th>
                                            <th>Email</th>
                                            <th>Phone No.</th>
                                        </tr>
                                    </thead>
                                    <tbody>

                                        <asp:PlaceHolder runat="server" ID="groupPlaceHolder1"></asp:PlaceHolder>

                                    </tbody>
                                    <tfoot>
                                        <tr>
                                            <td colspan="4">
                                                <div class="pull-right hidden-xs">
                                                    <asp:LinkButton runat="server" ID="btnAllCutomers" PostBackUrl="~/ListCustomers.aspx">View All Customers</asp:LinkButton>
                                                </div>
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
                <td><%# Eval("Username") %></td>
                <td><%# Eval("Name") %></td>
                <td><%# Eval("Email") %></td>
                <td><%# Eval("PhoneNo") %></td>
            </tr>
        </ItemTemplate>


    </asp:ListView>
</asp:Content>
