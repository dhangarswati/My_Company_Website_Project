<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeeTable.aspx.cs" Inherits="ImperialDeskApp.DeskApp.employeeTable" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Employee Table</title>

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
    <link rel="stylesheet" type="text/css" href="src/plugins/datatables/css/dataTables.bootstrap4.min.css" />
    <link rel="stylesheet" type="text/css" href="src/plugins/datatables/css/responsive.bootstrap4.min.css" />
    <link rel="stylesheet" type="text/css" href="vendors/styles/style.css" />

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
        <div class="pre-loader">
            <div class="pre-loader-box">
                <div class="loader-logo">
                    <img src="vendors/images/deskapp-logo.svg" alt="" />
                </div>
                <div class='loader-progress' id="progress_div">
                    <div class='bar' id='bar1'></div>
                </div>
                <div class='percent' id='percent1'>0%</div>
                <div class="loading-text">
                    Loading...
	
                </div>
            </div>
        </div>
        <div class="left-side-bar">
            <div class="brand-logo">
                <a href="dashboard.aspx">
                    <img src="vendors/images/deskapp-logo.svg" alt="" class="dark-logo" />
                    <img src="vendors/images/deskapp-logo-white.svg" alt="" class="light-logo" />
                </a>
                <div class="close-sidebar" data-toggle="left-sidebar-close">
                    <i class="ion-close-round"></i>
                </div>
            </div>
            <div class="menu-block customscroll">
                <div class="sidebar-menu">
                    <ul id="accordion-menu">
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon dw dw-house-1"></span><span class="mtext">Home</span>
                            </a>
                            <ul class="submenu">
                                <li><a href="dashboard.aspx">Dashboard</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon dw dw-user"></span><span class="mtext">Employee</span>
                            </a>
                            <ul class="submenu">
                                <li><a href="employee.aspx">Add Employee</a></li>
                                <li><a href="class.aspx">Add Class</a></li>
                                <li><a href="employeeTable.aspx">All Employee Records</a></li>
                                <li><a href="employeeAttendance.aspx">Employee Attendance</a></li>
                                <li><a href="leave.aspx">Leave</a></li>
                                <li><a href="salary.aspx">Salary</a></li>
                                <li><a href="salaryReport.aspx">Salary Report</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon dw dw-edit2"></span><span class="mtext">Forms</span>
                            </a>
                            <ul class="submenu">
                                <li><a href="contactTable.aspx">Contact Edit Form</a></li>
                                <li><a href="registerTable.aspx">Register Edit Form</a></li>
                            </ul>
                        </li>
                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon dw dw-library"></span><span class="mtext">Tables</span>
                            </a>
                            <ul class="submenu">
                                <li><a href="contactTable.aspx">Contact Table</a></li>
                                <li><a href="registerTable.aspx">Register Table</a></li>
                            </ul>
                        </li>

                        <li class="dropdown">
                            <a href="javascript:;" class="dropdown-toggle">
                                <span class="micon dw dw-right-arrow1"></span><span class="mtext">Additional Pages</span>
                            </a>
                            <ul class="submenu">
                                <li><a href="login.aspx">Login</a></li>
                                <li><a href="register.aspx">Register</a></li>
                                <li><a href="forgotPassword.aspx">Forgot Password</a></li>
                                <li><a href="resetPassword.aspx">Reset Password</a></li>
                            </ul>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="mobile-menu-overlay"></div>
        <div class="main-container">
            <div class="pd-ltr-20 xs-pd-20-10">
                <div class="min-height-200px">
                    <div class="page-header">
                        <div class="row">
                            <div class="col-md-6 col-sm-12">
                                <div class="title">
                                    <h4>Employee Table</h4>
                                </div>
                                <nav aria-label="breadcrumb" role="navigation">
                                    <ol class="breadcrumb">
                                        <li class="breadcrumb-item"><a href="dashboard.aspx">Home</a></li>
                                        <li class="breadcrumb-item active" aria-current="page">Employee Table</li>
                                    </ol>
                                </nav>
                            </div>
                        </div>
                    </div>

                    <!-- Bordered table  start -->
                    <div class="pd-20 card-box mb-30">
                        <div class="clearfix mb-20">
                            <div class="pull-left">
                                <h4 class="text-blue h4">Employee Records Table</h4>
                            </div>
                        </div>
                        <%--<div class="input-group mb-3">
                            <!-- Dropdown for Branch -->
                            <asp:DropDownList ID="ddlBranch" runat="server" CssClass="form-control p-2 ml-2 mb-3">
                                <asp:ListItem Value="" Text="Select Branch" />
                                <asp:ListItem Value="Branch1" Text="IT" />
                                <asp:ListItem Value="Branch2" Text="CS" />
                            </asp:DropDownList>

                            <!-- Dropdown for Employee Name -->
                            <asp:DropDownList ID="ddlEmployeeName" runat="server" CssClass="form-control p-2 ml-2 mb-3">
                                <asp:ListItem Value="" Text="Select Employee" />
                                <asp:ListItem Value="Employee1" Text="Vishal Sunil Patil" />
                                <asp:ListItem Value="Employee2" Text="Minal Rajesh Wagh" />
                            </asp:DropDownList>

                            <!-- Search Button -->
                            <div class="input-group-append">
                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary p-2 ml-2 mb-3" OnClick="btnSearch_Click" />
                            </div>
                        </div>--%>
                        <div class="input-group p-2 ml-2 mb-3">
                            <asp:TextBox ID="txtSearch" runat="server" placeholder="EmpId OR Email"></asp:TextBox>
                            <div class="input-group-append">
                                <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn btn-primary p-2 ml-2" OnClick="btnSearch_Click" />
                            </div>
                        </div>
                        <div class="table-responsive">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">EmpId</th>
                                        <th scope="col">Employee Name</th>
                                        <th scope="col">Gender</th>
                                        <th scope="col">Joining Date</th>
                                        <th scope="col">City</th>
                                        <th scope="col">State</th>
                                        <th scope="col">Pincode</th>
                                        <th scope="col">Mobile</th>
                                        <th scope="col">Degree</th>
                                        <th scope="col">Branch</th>
                                        <th scope="col">Email</th>
                                        <th scope="col">Username</th>
                                        <th scope="col">Password</th>
                                        <th scope="col">Class</th>
                                        <th scope="col">Basic Pay</th>
                                        <th scope="col">Salary</th>
                                        <th scope="col">Bank Account</th>
                                        <th scope="col">Credit Card Type</th>
                                        <th scope="col" colspan="2">Action</th>
                                    </tr>
                                </thead>
                                <asp:Repeater ID="rptEmployeeDetails" runat="server">
                                    <ItemTemplate>
                                        <tbody>
                                            <tr>
                                                <td><%#Eval("EmpId")%></td>
                                                <td><%#Eval("EmpName")%></td>
                                                <td><%#Eval("Gender")%></td>
                                                <td><%#Eval("JoiningDate")%></td>
                                                <td><%#Eval("City")%></td>
                                                <td><%#Eval("State")%></td>
                                                <td><%#Eval("Pincode")%></td>
                                                <td><%#Eval("Mobile")%></td>
                                                <td><%#Eval("Degree")%></td>
                                                <td><%#Eval("Branch")%></td>
                                                <td><%#Eval("Email")%></td>
                                                <td><%#Eval("Username")%></td>
                                                <td><%#Eval("Password")%></td>
                                                <td><%#Eval("Class")%></td>
                                                <td><%#Eval("BasicPay")%></td>
                                                <td><%#Eval("Salary")%></td>
                                                <td><%#Eval("BankAccount")%></td>
                                                <td><%#Eval("CreditCardType")%></td>
                                                <td>
                                                    <asp:LinkButton ID="LBtnDelete" runat="server" OnClick="LBtnDelete_Click">Delete</asp:LinkButton>
                                                    <asp:Label ID="lblId" runat="server" Text='<%#Eval("EmpId")%>' Visible="false"></asp:Label></td>
                                                <td><a href="employeeEditForm.aspx?id=<%#Eval("EmpId")%>">Edit</a></td>
                                            </tr>
                                        </tbody>
                                    </ItemTemplate>
                                </asp:Repeater>
                            </table>
                        </div>
                        <!-- Label for No Records Found -->
                        <asp:Label ID="lblNoRecords" runat="server" Text="No records found." Visible="False" CssClass="text-danger" />
                    </div>
                    <!-- Bordered table End -->

                </div>
                <div class="footer-wrap pd-20 mb-20 card-box">
                    DeskApp By <a href="https://github.com/dropways" target="_blank">Swati Dhangar</a>
                </div>
            </div>
        </div>
        <!-- js -->
        <script src="vendors/scripts/core.js"></script>
        <script src="vendors/scripts/script.min.js"></script>
        <script src="vendors/scripts/process.js"></script>
        <script src="vendors/scripts/layout-settings.js"></script>
    </form>
</body>
</html>
