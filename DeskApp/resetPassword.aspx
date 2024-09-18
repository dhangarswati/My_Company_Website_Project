<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="resetPassword.aspx.cs" Inherits="ImperialDeskApp.DeskApp.resetPassword" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<!-- Basic Page Info -->
	<meta charset="utf-8"/>
	<title>DeskApp - Reset Password</title>

	<!-- Site favicon -->
	<link rel="apple-touch-icon" sizes="180x180" href="vendors/images/apple-touch-icon.png"/>
	<link rel="icon" type="image/png" sizes="32x32" href="vendors/images/favicon-32x32.png"/>
	<link rel="icon" type="image/png" sizes="16x16" href="vendors/images/favicon-16x16.png"/>

	<!-- Mobile Specific Metas -->
	<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1"/>

	<!-- Google Font -->
	<link href="https://fonts.googleapis.com/css2?family=Inter:wght@300;400;500;600;700;800&display=swap" rel="stylesheet"/>
	<!-- CSS -->
	<link rel="stylesheet" type="text/css" href="vendors/styles/core.css"/>
	<link rel="stylesheet" type="text/css" href="vendors/styles/icon-font.min.css"/>
	<link rel="stylesheet" type="text/css" href="vendors/styles/style.css"/>

	<!-- Global site tag (gtag.js) - Google Analytics -->
	<script async src="https://www.googletagmanager.com/gtag/js?id=UA-119386393-1"></script>
	<script>
		window.dataLayer = window.dataLayer || [];
		function gtag(){dataLayer.push(arguments);}
		gtag('js', new Date());

		gtag('config', 'UA-119386393-1');
	</script>
</head>
<body>
    <div class="login-header box-shadow">
	<div class="container-fluid d-flex justify-content-between align-items-center">
		<div class="brand-logo">
			<a href="login.aspx">
				<img src="vendors/images/deskapp-logo.svg" alt=""/>
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
			<div class="col-md-6">
				<img src="vendors/images/forgot-password.png" alt="">
			</div>
			<div class="col-md-6">
				<div class="login-box bg-white box-shadow border-radius-10">
					<div class="login-title">
						<h2 class="text-center text-primary">Reset Password</h2>
					</div>
					<h6 class="mb-20">Enter your new password, confirm and submit</h6>
					<form runat="server">
						<div class="input-group custom">
							<%--<input type="text" class="form-control form-control-lg" placeholder="New Password">--%>
							 <asp:TextBox TextMode="Password" ID="txtPassword" class="form-control form-control-lg" placeholder="New Password" runat="server"></asp:TextBox>
							<div class="input-group-append custom">
								<span class="input-group-text"><i class="dw dw-padlock1"></i></span>
							</div>
						</div>
						 <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server"
					     ErrorMessage="Please Enter the Password" ControlToValidate="txtPassword" ForeColor="Red"></asp:RequiredFieldValidator>
						<div class="input-group custom">
							<%--<input type="text" class="form-control form-control-lg" placeholder="Confirm New Password">--%>
							<asp:TextBox TextMode="Password" ID="txtCPassword" class="form-control form-control-lg" placeholder="Confirm New Password" runat="server"></asp:TextBox>
							<div class="input-group-append custom">
								<span class="input-group-text"><i class="dw dw-padlock1"></i></span>
							</div>
						</div>
						    <asp:CompareValidator ID="CompareValidator1" runat="server"
							 ErrorMessage="Password do not Match" ForeColor="Red"
							 ControlToValidate="txtCPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
						<div class="row align-items-center">
							<div class="col-5">
								<div class="input-group mb-0">
									 <asp:Button ID="btnSubmit" class="btn btn-primary btn-lg btn-block" runat="server" Text="Submit"/>
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
</body>
</html>
