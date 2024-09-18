<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeeEditForm.aspx.cs" Inherits="ImperialDeskApp.DeskApp.employeeEditForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Employee Edit Form</title>

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
                             <h4>Register Edit Form</h4>
                         </div>
                         <nav aria-label="breadcrumb" role="navigation">
                             <ol class="breadcrumb">
                                 <li class="breadcrumb-item"><a href="dashboard.aspx">Home</a></li>
                                 <li class="breadcrumb-item active" aria-current="page">Employee Edit Form</li>
                             </ol>
                         </nav>
                     </div>
                 </div>
             </div>
             <!-- Default Basic Forms Start -->
             <div class="pd-20 card-box mb-30">
                 <div class="clearfix">
                     <div class="pull-left">
                         <h4 class="text-blue h4">Employee Edit Form</h4>
                     </div>
                 </div>
                 <form runat="server">
                       <div class="form-group row">
      <label class="col-sm-4 col-form-label">Employee Full Name*</label>
      <div class="col-sm-8">
          <%--<input type="text" class="form-control">--%>
          <asp:TextBox ID="txtFullName" class="form-control" runat="server"></asp:TextBox>
      </div>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
          ErrorMessage="Please Enter Employee Full Name" ControlToValidate="txtFullName" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>

  <div class="form-group row align-items-center">
      <label class="col-sm-4 col-form-label">Gender*</label>
      <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
          <asp:ListItem class="gender" Text="Male" Value="1"></asp:ListItem>
          <asp:ListItem class="gender" Text="Female" Value="2"></asp:ListItem>
          <asp:ListItem class="gender" Text="Other" Value="3"></asp:ListItem>
      </asp:RadioButtonList>

      <asp:RequiredFieldValidator ID="RequiredFieldValidator9" runat="server"
          ErrorMessage="Please Select One Option" ControlToValidate="rblGender" ForeColor="Red"></asp:RequiredFieldValidator>

  </div>

  <div class="form-group row">
      <label class="col-sm-4 col-form-label">Joining Date*</label>
      <div class="col-sm-8">
          <%--<input type="text" class="form-control">--%>
          <asp:TextBox ID="txtJoin" class="form-control" runat="server"></asp:TextBox>
      </div>
      <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server"
          ErrorMessage="Please Enter Employee Joining Date" ControlToValidate="txtJoin" ForeColor="Red"></asp:RequiredFieldValidator>
  </div>

  <div class="form-group row">
      <label class="col-sm-4 col-form-label">City</label>
      <div class="col-sm-8">
          <%--<input type="text" class="form-control">--%>
          <asp:TextBox ID="txtCity" class="form-control" runat="server"></asp:TextBox>
      </div>
  </div>

  <div class="form-group row">
      <label class="col-sm-4 col-form-label">State</label>
      <div class="col-sm-8">
          <%--<input type="text" class="form-control">--%>
          <asp:TextBox ID="txtState" class="form-control" runat="server"></asp:TextBox>
      </div>
  </div>

  <div class="form-group row">
      <label class="col-sm-4 col-form-label">Pincode</label>
      <div class="col-sm-8">
          <%--<input type="text" class="form-control">--%>
          <asp:TextBox ID="txtPincode" class="form-control" runat="server"></asp:TextBox>
      </div>
  </div>

  <div class="form-group row">
      <label class="col-sm-4 col-form-label">Mobile*</label>
      <div class="col-sm-8">
          <%--<input type="text" class="form-control">--%>
          <asp:TextBox ID="txtMobile" class="form-control" runat="server"></asp:TextBox>
      </div>
      <asp:RegularExpressionValidator ID="RegularExpressionValidatorPhone" runat="server"
          ErrorMessage="Invalid Mobile Number" ControlToValidate="txtMobile"
          ValidationExpression="[0-9]{10}" ForeColor="Red"></asp:RegularExpressionValidator>
  </div>

  <div class="form-group row">
      <label class="col-sm-4 col-form-label">Degree</label>
      <div class="col-sm-8">
          <asp:DropDownList ID="ddlDegree" class="form-control selectpicker" title="Select Degree" runat="server">
              <asp:ListItem Text="PHD" />
              <asp:ListItem Text="ME" />
              <asp:ListItem Text="BE" />
              <asp:ListItem Text="MSC" />
              <asp:ListItem Text="BSC" />
          </asp:DropDownList>
      </div>
  </div>

  <div class="form-group row">
      <label class="col-sm-4 col-form-label">Branch</label>
      <div class="col-sm-8">
          <asp:DropDownList ID="ddlBranch" class="form-control selectpicker" title="Select Branch" runat="server">
              <asp:ListItem Text="IT" />
              <asp:ListItem Text="CS" />
          </asp:DropDownList>
      </div>
  </div>
                      <div class="form-group row">
     <label class="col-sm-4 col-form-label">Email Address*</label>
     <div class="col-sm-8">
         <%--<input type="email" class="form-control">--%>
         <asp:TextBox ID="txtEmail" class="form-control" runat="server"></asp:TextBox>
     </div>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
         ErrorMessage="Email is Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
     <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
         ErrorMessage="Invalid Email Address" ControlToValidate="txtEmail"
         ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$" ForeColor="Red"></asp:RegularExpressionValidator>
 </div>

 <div class="form-group row">
     <label class="col-sm-4 col-form-label">Username*</label>
     <div class="col-sm-8">
         <%--<input type="text" class="form-control">--%>
         <asp:TextBox ID="txtUserName" class="form-control" runat="server"></asp:TextBox>
     </div>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Enter Username"
         ControlToValidate="txtUserName" ForeColor="Red"></asp:RequiredFieldValidator>
 </div>

 <div class="form-group row">
     <label class="col-sm-4 col-form-label">Password*</label>
     <div class="col-sm-8">
         <%--<input type="password" class="form-control">--%>
         <asp:TextBox TextMode="Password" ID="txtPassword" class="form-control" runat="server"></asp:TextBox>
     </div>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
         ErrorMessage="Please Enter the Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
 </div>
                          <div class="form-group row">
         <label class="col-sm-4 col-form-label">Class</label>
         <div class="col-sm-8">
             <asp:DropDownList ID="ddlClass" class="form-control selectpicker" title="Select Class" runat="server">
                 <asp:ListItem Text="Class-I" />
                 <asp:ListItem Text="Class-II" />
                 <asp:ListItem Text="Class-III" />
                 <asp:ListItem Text="Class-IV" />
             </asp:DropDownList>
         </div>
     </div>

     <div class="form-group row">
         <label class="col-sm-4 col-form-label">Basic Pay</label>
         <div class="col-sm-8">
             <%--<input type="text" class="form-control">--%>
             <asp:TextBox ID="txtPay" class="form-control" runat="server"></asp:TextBox>
         </div>
     </div>
     <div class="form-group row">
         <label class="col-sm-4 col-form-label">Salary</label>
         <div class="col-sm-8">
             <%--<input type="text" class="form-control">--%>
             <asp:TextBox ID="txtSalary" class="form-control" runat="server"></asp:TextBox>
         </div>
     </div>
     <div class="form-group row">
         <label class="col-sm-4 col-form-label">Bank Account</label>
         <div class="col-sm-8">
             <%--<input type="text" class="form-control">--%>
             <asp:TextBox ID="txtAccount" class="form-control" runat="server"></asp:TextBox>
         </div>
     </div>
     <div class="form-group row">
         <label class="col-sm-4 col-form-label">Credit Card Type</label>
         <div class="col-sm-8">
             <asp:DropDownList ID="ddlCards" class="form-control selectpicker" title="Select Card Type" runat="server">
                 <asp:ListItem Text="Mastercard" />
                 <asp:ListItem Text="Visa" />
                 <asp:ListItem Text="Regular Credit Card" />
             </asp:DropDownList>
         </div>
     </div>

                    
                     <asp:Button ID="btnUpdate" class="btn btn-primary btn-lg btn-block" runat="server" Text="Update" OnClick="btnUpdate_Click" />
                 </form>
             </div>
             <!-- Default Basic Forms End -->
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
</body>
</html>
