<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="class.aspx.cs" Inherits="ImperialDeskApp.DeskApp._class" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Class</title>

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
<body>
    <%--<h3 class="d-flex align-items-center flex-wrap justify-content-center">Add Class</h3>--%>
    <div class="login-wrap d-flex align-items-center flex-wrap justify-content-center">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-lg-7">
                    <img src="vendors/images/login-page-img.png" alt="" />
                </div>
                <div class="col-md-6 col-lg-5">
                    <div class="login-box bg-white box-shadow border-radius-10">
                        <div class="login-title">
                            <h2 class="text-center text-primary">Add New Class</h2>
                        </div>
                        <form runat="server">
                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Class Name*</label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtClass" class="form-control" runat="server"></asp:TextBox>
                                </div>
                                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                    ErrorMessage="Please Enter Class Name" ControlToValidate="txtClass" ForeColor="Red"></asp:RequiredFieldValidator>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Basic Pay</label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtPay" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Salary</label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtSalary" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Travel Allowance</label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtTAll" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Medical Allowance</label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtMAll" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label class="col-sm-4 col-form-label">Washing Allowance</label>
                                <div class="col-sm-8">
                                    <asp:TextBox ID="txtWAll" class="form-control" runat="server"></asp:TextBox>
                                </div>
                            </div>

                            <div class="row">
                                <div class="col-sm-12">
                                    <div class="d-flex justify-content-center">
                                        <asp:Button ID="btnAdd" class="btn btn-primary" runat="server" Text="Add Class" OnClick="btnAdd_Click" />
                                        <asp:Button runat="server" ID="btnReset" Text="Reset" class="btn btn-secondary ml-3" OnClick="btnReset_Click" CausesValidation="False" />
                                    </div>
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                    <asp:Label ID="lblAdd" runat="server" Text=""></asp:Label>
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
</body>
</html>
