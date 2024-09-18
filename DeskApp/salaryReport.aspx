<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="salaryReport.aspx.cs" Inherits="ImperialDeskApp.DeskApp.salaryReport" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Salary Report</title>

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
    <form id="form1" runat="server">
        <div class="container-fluid">
            <div class="row">
                <div class="col-md-12">
                    <div class="register-box bg-white box-shadow border-radius-10">
                        <div class="wizard-content">
                            <div class="container mt-5 mb-5">
                                <div class="login-title">
                                    <h2 class="text-center text-primary mb-4 pt-4">Salary Report</h2>
                                </div>

                                <!-- GridView to display salary details -->
                                <asp:GridView ID="gvSalaryReport" runat="server" CssClass="table table-striped table-responsive table-bordered" AutoGenerateColumns="False" DataKeyNames="Id" OnRowDataBound="gvSalaryReport_RowDataBound" OnRowEditing="gvSalaryReport_RowEditing" OnRowCancelingEdit="gvSalaryReport_RowCancelingEdit" OnRowUpdating="gvSalaryReport_RowUpdating" OnRowDeleting="gvSalaryReport_RowDeleting">
                                    <Columns>
                                        <asp:BoundField DataField="Id" HeaderText="ID"/>
                                        <asp:BoundField DataField="EmpName" HeaderText="Employee Name" />
                                        <asp:BoundField DataField="Class" HeaderText="Class" DataFormatString="{0:C}" />
                                        <asp:BoundField DataField="BasicPay" HeaderText="Basic Pay" DataFormatString="{0:C}" />
                                        <asp:BoundField DataField="Salary" HeaderText="Salary" DataFormatString="{0:C}" />
                                        <asp:BoundField DataField="TravelAllowance" HeaderText="Travel Allowance" DataFormatString="{0:C}" />
                                        <asp:BoundField DataField="MedicalAllowance" HeaderText="Medical Allowance" DataFormatString="{0:C}" />
                                        <asp:BoundField DataField="WashingAllowance" HeaderText="Washing Allowance" DataFormatString="{0:C}" />
                                        <asp:BoundField DataField="Deductions" HeaderText="Deductions" DataFormatString="{0:C}" />
                                        <asp:BoundField DataField="NetSalary" HeaderText="Net Salary" DataFormatString="{0:C}" />
                                        
                                        <asp:CommandField ShowEditButton="True" ShowDeleteButton="True" ButtonType="Link" />
                                    </Columns>
                                </asp:GridView>
                                <asp:Label ID="lblMessage" runat="server" Text=""></asp:Label>
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
    </form>
</body>
</html>
