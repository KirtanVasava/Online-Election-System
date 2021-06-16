<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="Voter.Registration" %>

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
            <div class="card-header">Registration</div>
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
                        <div class="form-row">
                            <div class="col-md-12">
                                <label for="exampleInputFName">First Name</label>
                                <asp:TextBox ID="firstname" runat="server" CssClass="form-control" placeholder="Enter Firstname"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter First Name" ControlToValidate="firstname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <label for="exampleInputLName">Last Name</label>
                                <asp:TextBox ID="lastname" runat="server" CssClass="form-control" placeholder="Enter Lastname"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Enter Last Name" ControlToValidate="lastname" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <label for="exampleInputFName">Voter ID</label>
                                <asp:TextBox ID="voterid" runat="server" CssClass="form-control" placeholder="Enter 6 digit Voter ID" ></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Enter voter id" ControlToValidate="voterid" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <label for="exampleInputMobileNo">Mobile No.</label>
                                <asp:TextBox ID="mobileno" runat="server" CssClass="form-control" placeholder="Enter Mobile Number" TextMode="Phone"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Enter Mobile Number" ControlToValidate="mobileno" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="exampleInputEmail1">Email Address</label>
                        <asp:TextBox ID="email" runat="server" CssClass="form-control" placeholder="Enter Email" TextMode="Email"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rqr_emil" runat="server" ErrorMessage="Enter email" ControlToValidate="email" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:RegularExpressionValidator ID="rqrexpre_email" runat="server" ErrorMessage="Enter validate email" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" ControlToValidate="email" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <label for="exampleInputPassword1">Password</label>
                                <asp:TextBox ID="password" runat="server" CssClass="form-control" placeholder="Enter Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="rqr_pass" runat="server" ErrorMessage="Enter password" ControlToValidate="password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="form-row">
                            <div class="col-md-12">
                                <label for="exampleInputPassword1">Confirm Password</label>
                                <asp:TextBox ID="confirmpassword" runat="server" CssClass="form-control" placeholder="Enter Confirm Password" TextMode="Password"></asp:TextBox>
                                <asp:RequiredFieldValidator ID="req_confirmpassword" runat="server" ErrorMessage="Enter password" ControlToValidate="password" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>
                            
                        </div>
                    </div>
                    <div class="form-group">
                        <div id="ReCaptchContainer"></div>
                        <asp:Label ID="lblMessage1" runat="server"></asp:Label>
                    </div>

                    <asp:Button ID="btn_login" runat="server" Text="Register" CssClass="btn btn-primary btn-block" OnClick="btn_login_Click"/>
                    <div class="text-center">
                        <a class="d-block small" href="Login.aspx">Already Have an account?</a>
                    </div>
                </form>

            </div>
        </div>
    </div>

    <script src="https://www.google.com/recaptcha/api.js?onload=renderRecaptcha&render=explicit" async defer></script>
    <script type="text/javascript">
        var your_site_key = '6Lcmv2UaAAAAANN-WvforPwN-csExPRiLRsozCv_';
        var renderRecaptcha = function () {
            grecaptcha.render('ReCaptchContainer', {
                'sitekey': '6Lcmv2UaAAAAANN-WvforPwN-csExPRiLRsozCv_',
                'callback': reCaptchaCallback,
                theme: 'light', //light or dark
                type: 'image',// image or audio
                size: 'normal'//normal or compact
            });
        };
        var reCaptchaCallback = function (response) {
            if (response !== '') {
                document.getElementById('lblMessage1').innerHTML = "";
            }
        };
    </script>
</body>

</html>

