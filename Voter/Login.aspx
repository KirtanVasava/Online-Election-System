<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Temp.Voter.Login" %>


<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Login - Online election sytem</title>
    <!-- Bootstrap core CSS-->
    <link href="../assets/css/bootstrap.min.css" rel="stylesheet">
    <!-- Custom fonts for login-->
    <link href="../assets/css/custom.css" rel="stylesheet">
</head>

<body style="background-image:url(../assets/image/voting.png);">
    <div class="container">
        <div class="card card-login mx-auto mt-5">
            <div class="card-header">Voter Login</div>
            <div class="card-body">
                <form runat="server" id="formlogin">
                    <asp:Panel ID="pnl_warning" runat="server" Visible="false">
                    <div class="form-group card-header text-center">
                        <div class="alert-danger">
                        <asp:Label ID="lbl_warning" runat="server" Text="Label" CssClass="col-form-label text-center"></asp:Label>
                        </div>
                    </div>
                    </asp:Panel>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Voter ID</label>
                        <asp:TextBox ID="voterid" runat="server" CssClass="form-control" placeholder="Enter 6 digit Voter ID"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter Voter ID" ControlToValidate="voterid" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>

                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-6">
                                <label for="exampleInputPassword1">Password</label>
                                <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_pass" runat="server" ErrorMessage="Enter password" ControlToValidate="password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <asp:Button ID="btn_login" runat="server" Text="Log In" CssClass="btn btn-primary btn-block" OnClick="btn_login_Click"/>
                    <div class="text-center">
                        <a class="d-block small" href="forgot-password.aspx">Forgot Password?</a>
                    </div>
                    <div class="alert alert-danger" id="error" runat="server" style="margin-top:10px; display:none">
                            <strong>You have entered invalid username or password</strong> 
                        </div>
                     <div class="alert alert-danger" id="Div1" runat="server" style="margin-top:10px; display:none">
                            <strong>You Have Been Blocked by Admin</strong> 
                        </div>
                </form>

            </div>
        </div>
    </div>
</body>

</html>

