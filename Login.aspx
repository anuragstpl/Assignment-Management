<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="PurcellCompliance.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge" />
    <!-- Tell the browser to be responsive to screen width -->
    <meta content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no" name="viewport" />
    <!-- Bootstrap 3.3.6 -->
    <link rel="stylesheet" href="bootstrap/css/bootstrap.min.css" />
    <title>Online Assignment Login</title>
    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.5.0/css/font-awesome.min.css" />
    <!-- Ionicons -->
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/ionicons/2.0.1/css/ionicons.min.css" />
    <!-- Theme style -->
    <link rel="stylesheet" href="dist/css/AdminLTE.min.css" />
    <!-- AdminLTE Skins. Choose a skin from the css/skins
       folder instead of downloading all of them to reduce the load. -->
    <link rel="stylesheet" href="dist/css/skins/_all-skins.min.css" />
</head>
<body class="hold-transition skin-blue sidebar-mini" style="background-color: #ecf0f5; margin-top:150px; margin-left:150px;">
    <div>
        <form id="form1" runat="server">
            <div class="content-wrapper">
                <section class="content">
                    <div class="row">
                        <div class="col-md-6">
                            <div class="box box-info">
                                <div class="box-header with-border">
                                    <img src="dist/img/apulogo.png" height="100" width="100" />
                                    <h3 class="box-title">Online Assignment Management Login</h3>
                                </div>
                                <!-- /.box-header -->

                                <div class="box-body">
                                    <div class="form-group">
                                        <label for="inputEmail3" class="col-sm-2 control-label">Email</label>

                                        <div class="col-sm-10">
                                            <asp:TextBox runat="server" ID="txtEmailORUsername" CssClass="form-control" placeholder="Email or Username"></asp:TextBox>
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label for="inputPassword3" class="col-sm-2 control-label">Password</label>

                                        <div class="col-sm-10">
                                             <asp:TextBox runat="server" TextMode="Password" ID="txtPassword" CssClass="form-control" placeholder="Password"></asp:TextBox>
                                        </div>
                                    </div>
                                    
                                </div>
                                <!-- /.box-body -->
                                <div class="box-footer">
                                    <a href="Register.aspx">Sign Up</a>
                                    
                                    <asp:Button runat="server" ID="btnSignIn" CssClass="btn btn-info pull-right" Text="Sign In" OnClick="btnSignIn_Click" />
                                </div>
                                <!-- /.box-footer -->
                            </div>
                        </div>
                    </div>
                </section>
            </div>
        </form>
    </div>
</body>
</html>
