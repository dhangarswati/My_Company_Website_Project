<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="leave.aspx.cs" Inherits="ImperialDeskApp.DeskApp.leave" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Leave Request</title>

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
                <!-- Leave Request Form Section -->
                <div class="col-md-4">
                    <div class="register-box bg-white box-shadow border-radius-10">
                        <div class="wizard-content">
                            <div class="container mt-5 mb-5">
                                <div class="login-title">
                                    <h2 class="text-center text-primary mb-4 pt-4">New Leave Request</h2>
                                </div>

                                <!-- Leave Request Form -->
                                <div class="form-group">
                                    <asp:Label runat="server" ID="lblEmpName" Text="Employee Name*" CssClass="form-label"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtEmpName" CssClass="form-control"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
                                        ErrorMessage="Please Enter Employee Name" ControlToValidate="txtEmpName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" ID="lblLeaveType" Text="Leave Type" CssClass="form-label"></asp:Label>
                                    <asp:DropDownList ID="ddlLeaveType" CssClass="form-control selectpicker" title="Select Leave Type" runat="server">
                                        <asp:ListItem Text="Sick Leave" Value="Sick Leave"></asp:ListItem>
                                        <asp:ListItem Text="Casual Leave" Value="Casual Leave"></asp:ListItem>
                                        <asp:ListItem Text="Annual Leave" Value="Annual Leave"></asp:ListItem>
                                        <asp:ListItem Text="Maternity Leave" Value="Maternity Leave"></asp:ListItem>
                                    </asp:DropDownList>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" ID="lblStartDate" Text="Start Date" CssClass="form-label"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtStartDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" ID="lblEndDate" Text="End Date" CssClass="form-label"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtEndDate" CssClass="form-control" TextMode="Date"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" ID="lblReason" Text="Reason" CssClass="form-label"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtReason" CssClass="form-control" TextMode="MultiLine" Rows="2"></asp:TextBox>
                                </div>
                                <div class="form-group">
                                    <asp:Label runat="server" ID="lblStatus" Text="Status" CssClass="form-label"></asp:Label>
                                    <asp:TextBox runat="server" ID="txtStatus" CssClass="form-control" ReadOnly="true"></asp:TextBox>
                                </div>
                                <div class="row">
                                    <div class="col-sm-12">
                                        <div class="d-flex justify-content-center">
                                            <asp:Button runat="server" ID="btnSubmit" Text="Apply For Leave" CssClass="btn btn-primary" OnClick="btnSubmit_Click" />
                                            <asp:Button runat="server" ID="btnReset" Text="Reset" CssClass="btn btn-secondary ml-3" OnClick="btnReset_Click" CausesValidation="False" />
                                        </div>
                                        <asp:Label ID="lblSubmit" runat="server" Text=""></asp:Label>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>

                <!-- Leave Report Section -->
                <div class="col-md-8">
                    <div class="register-box bg-white box-shadow border-radius-10">
                        <div class="wizard-content">
                            <div class="container mt-5 mb-5">
                                <div class="login-title">
                                    <h2 class="text-center text-primary mb-4 pt-4">Leave Report</h2>
                                </div>

                                <!-- GridView to display leave details -->
                                <asp:GridView ID="gvLeaveReport" runat="server" CssClass="table table-striped table-responsive table-bordered" AutoGenerateColumns="False" DataKeyNames="Id" OnRowDataBound="gvLeaveReport_RowDataBound" OnRowEditing="gvLeaveReport_RowEditing" OnRowCancelingEdit="gvLeaveReport_RowCancelingEdit" OnRowUpdating="gvLeaveReport_RowUpdating" OnRowDeleting="gvLeaveReport_RowDeleting">
                                    <Columns>
                                            <asp:BoundField DataField="Id" HeaderText="ID" />
                                            <asp:BoundField DataField="EmpName" HeaderText="Employee Name" ReadOnly="True" />
                                            <asp:BoundField DataField="LeaveType" HeaderText="Leave Type" ReadOnly="True" />
                                            <asp:BoundField DataField="StartDate" HeaderText="Start Date" DataFormatString="{0:MM/dd/yyyy}" ReadOnly="True" />
                                            <asp:BoundField DataField="EndDate" HeaderText="End Date" DataFormatString="{0:MM/dd/yyyy}" ReadOnly="True" />
                                            <asp:BoundField DataField="Reason" HeaderText="Reason" ReadOnly="True" />
        
                                           <%-- Only the Status field will be editable--%>
                                            <asp:TemplateField HeaderText="Status">
                                                <ItemTemplate>
                                                    <asp:Label ID="lblStatus" runat="server" Text='<%# Eval("Status") %>'></asp:Label>
                                                </ItemTemplate>
                                                <EditItemTemplate>
                                                    <asp:TextBox ID="txtStatus" runat="server" Text='<%# Bind("Status") %>'></asp:TextBox>
                                                </EditItemTemplate>
                                            </asp:TemplateField>

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
