<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employeeAttendance.aspx.cs" Inherits="ImperialDeskApp.DeskApp.employeeAttendance" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Employee Attendance</title>

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
    <h2 class="d-flex align-items-center flex-wrap justify-content-center text-primary">Employee Attendance</h2>
    <div class="register-page-wrap d-flex align-items-center flex-wrap justify-content-center">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 col-lg-6">
                    <img src="vendors/images/register-page-img.png" alt="" />
                </div>
                <div class="col-md-6 col-lg-6">
                    <div class="register-box bg-white box-shadow border-radius-10">
                        <div class="wizard-content">
                            <form class="tab-wizard2 wizard-circle wizard" runat="server">
                                <!-- Step 1 -->
                                <h5>Attendance Information</h5>
                                <section>
                                    <div class="form-wrap max-width-900 mx-auto">
                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Employee ID*</label>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtEmployeeID" class="form-control" runat="server"></asp:TextBox>
                                            </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorID" runat="server"
                                                ErrorMessage="Please Enter Employee ID" ControlToValidate="txtEmployeeID" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Date*</label>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtDate" class="form-control" runat="server" TextMode="Date"></asp:TextBox>
                                            </div>
                                            <asp:RequiredFieldValidator ID="RequiredFieldValidatorDate" runat="server"
                                                ErrorMessage="Please Enter Date" ControlToValidate="txtDate" ForeColor="Red"></asp:RequiredFieldValidator>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Check-In Time</label>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtCheckInTime" class="form-control" runat="server" TextMode="Time"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Check-Out Time</label>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtCheckOutTime" class="form-control" runat="server" TextMode="Time"></asp:TextBox>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Status</label>
                                            <div class="col-sm-8">
                                                <asp:DropDownList ID="ddlStatus" class="form-control selectpicker" title="Select Status" runat="server">
                                                    <asp:ListItem Text="Present" Value="Present" />
                                                    <asp:ListItem Text="Absent" Value="Absent" />
                                                    <asp:ListItem Text="Leave" Value="Leave" />
                                                </asp:DropDownList>
                                            </div>
                                        </div>

                                        <div class="form-group row">
                                            <label class="col-sm-4 col-form-label">Remarks</label>
                                            <div class="col-sm-8">
                                                <asp:TextBox ID="txtRemarks" class="form-control" runat="server" TextMode="MultiLine"></asp:TextBox>
                                            </div>
                                        </div>
                                    </div>
                                </section>

                                <!-- Step 2 -->
                                <h5>Overview Information</h5>
                                <section>
                                    <div class="form-wrap max-width-900 mx-auto">
                                        <ul class="register-info">
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Employee ID</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblEmployeeIDOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Date</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblDateOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Check-In Time</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblCheckInTimeOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Check-Out Time</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblCheckOutTimeOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Status</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblStatusOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                            <li>
                                                <div class="row">
                                                    <div class="col-sm-4 weight-600">Remarks</div>
                                                    <div class="col-sm-8">
                                                        <asp:Label ID="lblRemarksOverview" runat="server" Text=""></asp:Label>
                                                    </div>
                                                </div>
                                            </li>
                                        </ul>
                                        <div class="custom-checkbox mt-3 d-flex align-items-center">
                                            <asp:CheckBox type="checkbox" ID="customCheck" runat="server" />
                                            <label for="customCheck" class="ml-2 mb-0">I have reviewed and confirmed the attendance details</label>
                                        </div>
                                        <asp:CustomValidator ID="CustomValidatorAttendance" runat="server" ErrorMessage="Attendance confirmation is required"
                                            ClientValidationFunction="ValidateAttendanceCheckBox" ForeColor="Red"></asp:CustomValidator>
                                    </div>
                                    <div class="row">
                                        <div class="col-sm-12">
                                            <div class="d-flex mb-4">
                                                <asp:Button ID="btnSubmit" class="btn btn-primary btn-lg mr-3 custom-btn" runat="server" Text="Submit Attendance" OnClick="btnSubmit_Click" />
                                                <asp:Button ID="btnClear" class="btn btn-outline-primary btn-lg custom-btn" runat="server" Text="Clear" OnClick="btnClear_Click" />
                                            </div>
                                            <asp:ValidationSummary ID="ValidationSummaryAttendance" runat="server" ForeColor="Red" />
                                            <asp:Label ID="lblSubmit" runat="server" Text=""></asp:Label>
                                        </div>
                                    </div>
                                </section>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
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
        function updateAttendanceOverview() {
            // Get the input values
            var employeeID = document.getElementById('<%= txtEmployeeID.ClientID %>').value;
            var date = document.getElementById('<%= txtDate.ClientID %>').value;
            var checkInTime = document.getElementById('<%= txtCheckInTime.ClientID %>').value;
            var checkOutTime = document.getElementById('<%= txtCheckOutTime.ClientID %>').value;
            var status = document.getElementById('<%= ddlStatus.ClientID %>').value;
            var remarks = document.getElementById('<%= txtRemarks.ClientID %>').value;

            // Update the overview labels
            document.getElementById('<%= lblEmployeeIDOverview.ClientID %>').innerText = employeeID;
            document.getElementById('<%= lblDateOverview.ClientID %>').innerText = date;
            document.getElementById('<%= lblCheckInTimeOverview.ClientID %>').innerText = checkInTime;
            document.getElementById('<%= lblCheckOutTimeOverview.ClientID %>').innerText = checkOutTime;
            document.getElementById('<%= lblStatusOverview.ClientID %>').innerText = status;
            document.getElementById('<%= lblRemarksOverview.ClientID %>').innerText = remarks;
        }

        // Add event listeners to update the overview in real-time
        document.getElementById('<%= txtEmployeeID.ClientID %>').addEventListener('input', updateAttendanceOverview);
        document.getElementById('<%= txtDate.ClientID %>').addEventListener('input', updateAttendanceOverview);
        document.getElementById('<%= txtCheckInTime.ClientID %>').addEventListener('input', updateAttendanceOverview);
        document.getElementById('<%= txtCheckOutTime.ClientID %>').addEventListener('input', updateAttendanceOverview);
        document.getElementById('<%= ddlStatus.ClientID %>').addEventListener('input', updateAttendanceOverview);
        document.getElementById('<%= txtRemarks.ClientID %>').addEventListener('input', updateAttendanceOverview);
    </script>

</body>
</html>
