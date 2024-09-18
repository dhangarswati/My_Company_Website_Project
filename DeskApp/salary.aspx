<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="salary.aspx.cs" Inherits="ImperialDeskApp.DeskApp.salary" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Salary Details</title>

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
    <div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-md-6 col-lg-7">
                    <img src="vendors/images/register-page-img.png" alt="" />
                </div>
                <div class="col-md-6 col-lg-5">
                    <div class="register-box bg-white box-shadow border-radius-10">
                        <div class="wizard-content">
                            <form runat="server">
                                <div class="container mt-5">
                                    <%--<h2 class="mb-4">Salary Details</h2>--%>
                                    <div class="login-title">
                                        <h2 class="text-center text-primary mb-4 pt-4">Salary Details</h2>
                                    </div>

                                    <!-- Employee Name Input -->
                                    <%--<div class="form-group">
                                        <asp:Label runat="server" ID="lblEmployeeName" Text="Employee Name" CssClass="form-label"></asp:Label>
                                        <asp:TextBox runat="server" ID="txtEmployeeName" CssClass="form-control"></asp:TextBox>
                                    </div>--%>
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Employee Name*</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="txtEmpName" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                            ErrorMessage="Please Enter Employee Name" ControlToValidate="txtEmpName" ForeColor="Red"></asp:RequiredFieldValidator>
                                    </div>

                                    <!-- Basic Salary Input -->
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
                                            <asp:TextBox ID="txtPay" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Salary</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="txtSalary" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <!-- Allowances Input -->
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Travel Allowance</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="txtTAll" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Medical Allowance</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="txtMAll" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Washing Allowance</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="txtWAll" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <!-- Deductions Input -->
                                 <%--   <div class="form-group">
                                        <asp:Label runat="server" ID="lblDeductions" Text="Deductions" CssClass="form-label"></asp:Label>
                                        <asp:TextBox runat="server" ID="txtDeductions" CssClass="form-control" TextMode="Number"></asp:TextBox>
                                    </div>  --%>
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Deductions</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="txtDeductions" class="form-control" runat="server"></asp:TextBox>
                                        </div>
                                    </div>

                                    <!-- Net Salary Input -->
                                   <%-- <div class="form-group">
                                        <asp:Label runat="server" ID="lblNetSalary" Text="Net Salary" CssClass="form-label"></asp:Label>
                                        <asp:TextBox runat="server" ID="txtNetSalary" CssClass="form-control" TextMode="Number" ReadOnly="True"></asp:TextBox>
                                    </div>--%>
                                    <div class="form-group row">
                                        <label class="col-sm-4 col-form-label">Net Salary</label>
                                        <div class="col-sm-8">
                                            <asp:TextBox ID="txtNetSalary" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                        </div>
                                    </div>

                                    <!-- Submit and Reset Buttons -->
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="d-flex justify-content-center">
                                                <asp:Button runat="server" ID="btnSubmit" Text="Generate Salary" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                                                <asp:Button runat="server" ID="btnReset" Text="Reset" CssClass="btn btn-secondary ml-3" OnClick="btnReset_Click" CausesValidation="False" />
                                            </div>
                                            <asp:Label ID="lblSubmit" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </div>
                            </form>
                        </div>
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
    <%--<script>
        function calculateNetSalary() {
            var basicPay = parseFloat(document.getElementById('<%= txtPay.ClientID %>').value) || 0;
        var travelAllowance = parseFloat(document.getElementById('<%= txtTAll.ClientID %>').value) || 0;
        var medicalAllowance = parseFloat(document.getElementById('<%= txtMAll.ClientID %>').value) || 0;
        var washingAllowance = parseFloat(document.getElementById('<%= txtWAll.ClientID %>').value) || 0;
        var deductions = parseFloat(document.getElementById('<%= txtDeductions.ClientID %>').value) || 0;

        var netSalary = basicPay + travelAllowance + medicalAllowance + washingAllowance - deductions;
        document.getElementById('<%= txtNetSalary.ClientID %>').value = netSalary.toFixed(2);
        }
    </script>--%>

</body>
</html>
