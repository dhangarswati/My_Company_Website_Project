<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="ImperialDeskApp.DeskApp.employee" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Employee Details</title>

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
    <h2 class="d-flex align-items-center flex-wrap justify-content-center text-primary">Employee Information</h2> 
    <div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
        <div class="container">
            <div class="row align-items-center">

                <div class="col-md-6 col-lg-7">
                    <img src="vendors/images/register-page-img.png" alt="" />
                </div>

                <div class="col-md-6 col-lg-5">
                    <div class="register-box bg-white box-shadow border-radius-10">
                        <div class="wizard-content">
                            <form class="tab-wizard2 wizard-circle wizard" runat="server">
                                <!-- Step 1 -->
                                <h5>Personal Information</h5>
                                <section>
                                    <div class="form-wrap max-width-900 mx-auto">
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
                                                <asp:TextBox ID="txtJoin" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
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
                                    </div>
                                </section>
                                <h5>Basic Account Credentials</h5>
                                <section>
                                    <div class="form-wrap max-width-900 mx-auto">
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
                                            <label class="col-sm-4 col-form-label">Confirm Password*</label>
                                            <div class="col-sm-8">
                                                <%--<input type="password" class="form-control">--%>
                                                <asp:TextBox TextMode="Password" ID="txtCPassword" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                            <asp:CompareValidator ID="CompareValidator1" runat="server"
                                                ErrorMessage="Password do not Match" ForeColor="Red"
                                                ControlToValidate="txtCPassword" ControlToCompare="txtPassword"></asp:CompareValidator>
                                        </div>
                                    </div>
                                </section>
                                <!-- Step 3 -->
                                <h5>Payment Method & Info</h5>
                                <section>
                                    <div class="form-wrap max-width-900 mx-auto">
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
                                                <asp:TextBox ID="txtPay" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Salary</label>
                                            <div class="col-sm-8">
                                                <%--<input type="text" class="form-control">--%>
                                                <asp:TextBox ID="txtSalary" class="form-control" runat="server" ReadOnly="true"></asp:TextBox>
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
                                        <div class="form-group row align-items-center">
                                            <label class="col-sm-4 col-form-label">Credit Card Number</label>
                                            <div class="col-sm-8">
                                                <%--<input type="text" class="form-control">--%>
                                                <asp:TextBox ID="txtCardNo" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">CVC</label>
                                            <div class="col-sm-4">
                                                <%--<input type="text" class="form-control">--%>
                                                <asp:TextBox ID="txtCVC" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                        </div>
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Expiration Date</label>
                                            <div class="col-sm-8">
                                                <div class="row">
                                                    <div class="col-m-5">
                                                        <asp:DropDownList ID="ddlMonth" class="form-control selectpicker" title="Month" data-size="5" runat="server">
                                                            <asp:ListItem Text="January" Value="01" />
                                                            <asp:ListItem Text="February" Value="02" />
                                                            <asp:ListItem Text="March" Value="03" />
                                                            <asp:ListItem Text="April" Value="04" />
                                                            <asp:ListItem Text="May" Value="05" />
                                                            <asp:ListItem Text="June" Value="06" />
                                                            <asp:ListItem Text="July" Value="07" />
                                                            <asp:ListItem Text="August" Value="08" />
                                                            <asp:ListItem Text="September" Value="09" />
                                                            <asp:ListItem Text="October" Value="10" />
                                                            <asp:ListItem Text="November" Value="11" />
                                                            <asp:ListItem Text="December" Value="12" />
                                                        </asp:DropDownList>
                                                    </div>
                                                    <div class="col-m-5">
                                                        <asp:DropDownList ID="ddlYear" class="form-control selectpicker" title="Year" data-size="5" runat="server">
                                                            <asp:ListItem Text="2024" Value="2024" />
                                                            <asp:ListItem Text="2025" Value="2025" />
                                                            <asp:ListItem Text="2026" Value="2026" />
                                                            <asp:ListItem Text="2027" Value="2027" />
                                                            <asp:ListItem Text="2028" Value="2028" />
                                                            <asp:ListItem Text="2029" Value="2029" />
                                                            <asp:ListItem Text="2030" Value="2030" />
                                                            <asp:ListItem Text="2031" Value="2031" />
                                                            <asp:ListItem Text="2032" Value="2032" />
                                                            <asp:ListItem Text="2033" Value="2033" />
                                                            <asp:ListItem Text="2034" Value="2034" />
                                                            <asp:ListItem Text="2035" Value="2035" />
                                                        </asp:DropDownList>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </section>
                                <!-- Step 4 -->
                                <h5>Overview Information</h5>
                                <section>
                                    <div class="form-wrap max-width-900 mx-auto">
                                        <ul class="register-info">
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Email Address</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblEmailOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Username</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblUsernameOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Full Name</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblFullNameOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Location</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblLocationOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="custom-checkbox mt-3 d-flex align-items-center">
                                            <asp:CheckBox type="checkbox" ID="customCheck" runat="server" />
                                            <label for="customCheck" class="ml-2 mb-0">I have read and agreed to the terms of services and privacy policy</label>
                                        </div>
                                        <asp:CustomValidator ID="CustomValidator2" runat="server" ErrorMessage="Terms and Condition acceptance Required"
                                            ClientValidationFunction="ValidateCheckBox" ForeColor="Red"></asp:CustomValidator>
                                    </div>
                                    <%--<div class="row">
                                        <div class="col-sm-12">
                                            <div class="input-group mb-0">
                                                <asp:Button ID="btnAdd" class="btn btn-primary btn-lg btn-block" runat="server" Text="Add Employee Details" OnClick="btnAdd_Click" />
                                                <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                                <asp:Label ID="lblAdd" runat="server" Text=""></asp:Label>
                                            </div>
                                        </div>
                                    </div>--%>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="d-flex mb-0">
                                                <asp:Button ID="btnAdd" class="btn btn-primary btn-lg mr-3 custom-btn" runat="server" Text="Add Employee Details" OnClick="btnAdd_Click" />
                                                <asp:Button ID="btnRefresh" class="btn btn-outline-primary btn-lg custom-btn" runat="server" Text="Refresh" OnClick="btnRefresh_Click" />
                                            </div>
                                            <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                            <asp:Label ID="lblAdd" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                    <br />
                                </section>
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
    <script type="text/javascript">
        function ValidateCheckBox(sender, args) {
            if (document.getElementById("<%=customCheck.ClientID %>").checked == true) {
                args.IsValid = true;
            } else {
                args.IsValid = false;
            }
        }
    </script>
    <script type="text/javascript">
        function ValidateRadioButton(sender, args) {
            var rblGender = document.getElementById('<%= rblGender.ClientID %>');
            var inputs = rblGender.getElementsByTagName('input');

            var isChecked = false;
            for (var i = 0; i < inputs.length; i++) {
                if (inputs[i].type === 'radio' && inputs[i].checked) {
                    isChecked = true;
                    break;
                }
            }

            args.IsValid = isChecked;
        }
</script>
    <script type="text/javascript">
        function updateOverview() {
            // Get the input values
            var email = document.getElementById('<%= txtEmail.ClientID %>').value;
            var username = document.getElementById('<%= txtUserName.ClientID %>').value;
            var fullName = document.getElementById('<%= txtFullName.ClientID %>').value;
            var city = document.getElementById('<%= txtCity.ClientID %>').value;
            var state = document.getElementById('<%= txtState.ClientID %>').value;

            // Update the overview labels
            document.getElementById('<%= lblEmailOverview.ClientID %>').innerText = email;
            document.getElementById('<%= lblUsernameOverview.ClientID %>').innerText = username;
            document.getElementById('<%= lblFullNameOverview.ClientID %>').innerText = fullName;
            document.getElementById('<%= lblLocationOverview.ClientID %>').innerText = city + ", " + state;
        }

        // Add event listeners to update the overview in real-time
        document.getElementById('<%= txtEmail.ClientID %>').addEventListener('input', updateOverview);
        document.getElementById('<%= txtUserName.ClientID %>').addEventListener('input', updateOverview);
        document.getElementById('<%= txtFullName.ClientID %>').addEventListener('input', updateOverview);
        document.getElementById('<%= txtCity.ClientID %>').addEventListener('input', updateOverview);
        document.getElementById('<%= txtState.ClientID %>').addEventListener('input', updateOverview);
    </script>
</body>
</html>
