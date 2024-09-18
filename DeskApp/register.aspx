<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="ImperialDeskApp.DeskApp.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Register</title>

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
    <link rel="stylesheet" type="text/css" href="src/plugins/jquery-steps/jquery.steps.css" />
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
                    <li><a href="login.aspx">Login</a></li>
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
                            <h2 class="text-center text-primary">Create New Account</h2>
                        </div>
                        <form runat="server">
                            <div class="input-group custom">
                                <asp:TextBox type="text" ID="txtEmail" class="form-control form-control-lg" placeholder="Email" runat="server"></asp:TextBox>
                                <div class="input-group-append custom">
                                    <span class="input-group-text"><i class="icon-copy dw dw-email"></i></span>
                                </div>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
                                ErrorMessage="Email is Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                ErrorMessage="Invalid Email Address" ControlToValidate="txtEmail"
                                ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$" ForeColor="Red"></asp:RegularExpressionValidator>

                            <div class="input-group custom">
                                <%--<input type="text" class="form-control form-control-lg" placeholder="Username" />--%>
                                <asp:TextBox type="text" ID="txtUserName" class="form-control form-control-lg" placeholder="Username" runat="server"></asp:TextBox>
                                <div class="input-group-append custom">
                                    <span class="input-group-text"><i class="icon-copy dw dw-user1"></i></span>
                                </div>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                ErrorMessage="Please Enter Username" ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="input-group custom">
                                <%--<input type="password" class="form-control form-control-lg" placeholder="**********" />--%>
                                <asp:TextBox TextMode="Password" ID="txtPassword" class="form-control form-control-lg" placeholder="Password" runat="server"></asp:TextBox>
                                <div class="input-group-append custom">
                                    <span class="input-group-text"><i class="dw dw-padlock1"></i></span>
                                </div>
                            </div>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                ErrorMessage="Password is required" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
                            <div class="input-group custom">

                                <asp:TextBox TextMode="Password" ID="txtCPassword" class="form-control form-control-lg" placeholder="Confirm Password" runat="server"></asp:TextBox>
                                <div class="input-group-append custom">
                                    <span class="input-group-text"><i class="dw dw-padlock1"></i></span>
                                </div>
                            </div>
                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                ErrorMessage="Password do not Match" ForeColor="Red"
                                ControlToValidate="txtCPassword" ControlToCompare="txtPassword"></asp:CompareValidator>

                            <div class="row">
                                <div class="col-12 d-flex align-items-center">
                                    <div class="custom-control custom-checkbox">
                                        <%--<input type="checkbox" class="custom-control-input" id="customCheck1" />--%>
                                        <asp:CheckBox type="checkbox" ID="customCheck" runat="server" />
                                        <asp:Label ID="lblCheck" for="customCheck" runat="server" Text="I have agreed to the terms and conditions"></asp:Label>
                                        <%--<label class="custom-control-label" for="customCheck">Remember</label>--%>
                                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Required"
                                            ClientValidationFunction="ValidateCheckBox" ForeColor="Red"></asp:CustomValidator>
                                    </div>
                                </div>
                            </div>
                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="input-group mb-0">
                                        <asp:Button ID="btnRegister" class="btn btn-primary btn-lg btn-block" runat="server" Text="Register To Create Account" OnClick="btnRegister_Click" />
                                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                        <asp:Label ID="lblRegister" runat="server" Text=""></asp:Label>
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
    <script src="src/plugins/jquery-steps/jquery.steps.js"></script>
    <script src="vendors/scripts/steps-setting.js"></script>
    <script type="text/javascript">
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
