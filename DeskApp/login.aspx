<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="ImperialDeskApp.DeskApp.login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Login</title>

    <!-- Site favicon -->
    <link rel="apple-touch-icon" sizes="180x180" href="vendors/images/apple-touch-icon.png" />
    <link rel="icon" type="image/png" sizes="32x32" href="vendors/images/favicon-32x32.png" />
    <link rel="icon" type="image/png" sizes="16x16" href="vendors/images/favicon-16x16.png" />

    <!-- Mobile Specific Metas -->
    <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1" />

    <!-- Google Font -->
    <link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet" />
    <!-- CSS -->
    <link rel="stylesheet" type="text/css" href="vendors/styles/core.css" />
    <link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css" />
    <link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />
    <link rel="stylesheet" type="text/css" href="src/styles/custom.css" />

    <!-- Global site tag (gtag.js) - Google Analytics -->
    <script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
    <script>
        window.dataLayer = window.dataLayer || [];
        function gtag() { dataLayer.push(arguments); }
        gtag('js', new Date());

        gtag('config', 'UA-119386393-1');
	</script>
</head>
<body class="login-page">
    <div class="login-header box-shadow">
        <div class="container-fluid d-flex justify-content-between align-items-center">
            <div class="brand-logo">
                <a href="login.aspx">
                    <img src="vendors/images/deskapp-logo.svg" alt="" />
                </a>
            </div>
            <div class="login-menu">
                <ul>
                    <li><a href="register.aspx">Register</a></li>
                </ul>
            </div>
        </div>
    </div>
    <div class="login-wrap d-flex align-items-center flex-wrap justify-content-center">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-lg-7">
                    <img src="vendors/images/login-page-img.png" alt="" />
                </div>
                <div class="col-md-6 col-lg-5">
                    <div class="login-box bg-white box-shadow border-radius-10">
                        <div class="login-title">
                            <h2 class="text-center text-primary">Login To DeskApp</h2>
                        </div>
                        <form runat="server">
                            <%--<div class="select-role">
                                <div class="btn-group btn-group-toggle" data-toggle="buttons">
                                    <label class="btn">
                                        <%--<input type="radio" name="options" id="admin" />
                                        <asp:RadioButton type="radio" name="options" Id="admin" runat="server" />
                                        <div class="icon">
                                            <img src="vendors/images/briefcase.svg" class="svg" alt="" /></div>
                                        <span>I'm</span>
                                        Manager
							
                                    </label>
                                    <label class="btn">
                                        <%--<input type="radio" name="options" id="user" />
                                        <asp:RadioButton type="radio" name="options" Id="user" runat="server" />
                                        <div class="icon">
                                            <img src="vendors/images/person.svg" class="svg" alt="" /></div>
                                        <span>I'm</span>
                                        Employee
							
                                    </label>
                                   <asp:CustomValidator ID="CustomValidator1" runat="server"
                                        ErrorMessage="Please select one option" 
                                        ForeColor="Red" 
                                        ClientValidationFunction="ValidateRadioButton"></asp:CustomValidator>
                                </div>
                            </div>--%>
                            <div class="input-group custom">
                                <%--<input type="text" class="form-control form-control-lg" placeholder="Username" />--%>
                                <asp:TextBox type="text" ID="txtUName" class="form-control form-control-lg" placeholder="Username" runat="server"></asp:TextBox> 
                                <div class="input-group-append custom">
                                    <span class="input-group-text"><i class="icon-copy dw dw-user1"></i></span>
                                </div>   
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                             ErrorMessage="Please Enter Username" ControlToValidate="txtUName" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="input-group custom">
                                <%--<input type="password" class="form-control form-control-lg" placeholder="**********" />--%>
                                <asp:TextBox TextMode="Password" ID="txtPassword" class="form-control form-control-lg" placeholder="Password" runat="server"></asp:TextBox>
                                <div class="input-group-append custom">
                                    <span class="input-group-text"><i class="dw dw-padlock1"></i></span>
                                </div>
                             </div>
                             <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" 
                             ErrorMessage="Password is required" ControlToValidate="txtPassword" ForeColor="Red" ></asp:RequiredFieldValidator>
                            <div class="row pb-60">
                                <div class="col-6 d-flex align-items-center">
                                    <div class="custom-control custom-checkbox">
                                        <%--<input type="checkbox" class="custom-control-input" id="customCheck1" />--%>
                                        <asp:CheckBox type="checkbox" ID="customCheck" runat="server" />
                                        <asp:Label ID="lblCheck" for="customCheck" runat="server" Text="Remember"></asp:Label>
                                        <%--<label class="custom-control-label" for="customCheck">Remember</label>--%>   
                                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Required"
                                            ClientValidationFunction = "ValidateCheckBox" ForeColor="Red"></asp:CustomValidator>
                                    </div>
                                </div>
                                <div class="col-6 d-flex justify-content-end align-items-center">
                                    <div class="forgot-password"><a href="forgotPassword.aspx">Forgot Password</a></div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-group mb-0">
                                        <asp:Button ID="btnLogin" class="btn btn-primary btn-lg btn-block" runat="server" Text="Login" OnClick="btnLogin_Click" />
                                        <asp:Label ID="lblLogin" runat="server" Text="" ForeColor="Red"></asp:Label>
                                        <%--<a class="btn btn-primary btn-lg btn-block" href="login.aspx">Sign In</a>--%>
                                    </div>
                                    <div class="font-16 weight-600 pt-10 pb-10 text-center" data-color="#707373">OR</div>
                                    <div class="input-group mb-0">
                                        <%--<asp:Button ID="btnRegister" class="btn btn-outline-primary btn-lg btn-block" runat="server" Text="Register To Create Account" />--%>
                                        <a class="btn btn-outline-primary btn-lg btn-block" href="register.aspx">Register To Create Account</a>
                                    </div>
                                </div>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
          </div>
       </div>
        
  
    <!-- js -->
    <script src="vendors/scripts/core.js"></script>
    <script src="vendors/scripts/script.min.js"></script>
    <script src="vendors/scripts/process.js"></script>
    <script src="vendors/scripts/layout-settings.js"></script>
    <%--<script type="text/javascript">
        function ValidateRadioButton(sender, args) {
            var admin = document.getElementById('<%= admin.ClientID %>');
        var user = document.getElementById('<%= user.ClientID %>');
            args.IsValid = admin.checked || user.checked;
        }
    </script>--%>
    <script type = "text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=customCheck.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
</body>
</html>
