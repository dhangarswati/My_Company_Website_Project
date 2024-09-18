<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="calendar.aspx.cs" Inherits="ImperialDeskApp.DeskApp.calendar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <!-- Basic Page Info -->
    <meta charset="utf-8" />
    <title>DeskApp - Calendar</title>

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
    <link rel="stylesheet" type="text/css" href="src/plugins/fullcalendar/fullcalendar.css"/>
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
            <img src="vendors/images/deskapp-logo.svg" alt="">
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

<div class="header">
    <div class="header-left">
        <div class="menu-icon dw dw-menu"></div>
        <div class="search-toggle-icon dw dw-search2" data-toggle="header_search"></div>
        <div class="header-search">
            <%-- <form id="form1" runat="server">--%>
            <div class="form-group mb-0">
                <i class="dw dw-search2 search-icon"></i>
                <input type="text" class="form-control search-input" placeholder="Search Here">
                <div class="dropdown">
                    <a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
                        <i class="ion-arrow-down-c"></i>
                    </a>
                    <div class="dropdown-menu dropdown-menu-right">
                        <div class="form-group row">
                            <label class="col-sm-12 col-md-2 col-form-label">From</label>
                            <div class="col-sm-12 col-md-10">
                                <input class="form-control form-control-sm form-control-line" type="text">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-12 col-md-2 col-form-label">To</label>
                            <div class="col-sm-12 col-md-10">
                                <input class="form-control form-control-sm form-control-line" type="text">
                            </div>
                        </div>
                        <div class="form-group row">
                            <label class="col-sm-12 col-md-2 col-form-label">Subject</label>
                            <div class="col-sm-12 col-md-10">
                                <input class="form-control form-control-sm form-control-line" type="text">
                            </div>
                        </div>
                        <div class="text-right">
                            <button class="btn btn-primary">Search</button>
                        </div>
                    </div>
                </div>
            </div>
            <%--</form>--%>
        </div>
    </div>
    <div class="header-right">
        <div class="dashboard-setting user-notification">
            <div class="dropdown">
                <a class="dropdown-toggle no-arrow" href="javascript:;" data-toggle="right-sidebar">
                    <i class="dw dw-settings2"></i>
                </a>
            </div>
        </div>
        <div class="user-notification">
            <div class="dropdown">
                <a class="dropdown-toggle no-arrow" href="#" role="button" data-toggle="dropdown">
                    <i class="icon-copy dw dw-notification"></i>
                    <span class="badge notification-active"></span>
                </a>
            </div>
        </div>
        <div class="user-info-dropdown">
            <div class="dropdown">
                <a class="dropdown-toggle" href="#" role="button" data-toggle="dropdown">
                    <span class="user-icon">
                        <img src="vendors/images/photo1.jpg" alt=""/>
                    </span>
                    <span class="user-name">Ajay Deshmukh</span>
                </a>
                <div class="dropdown-menu dropdown-menu-right dropdown-menu-icon-list">
                    <a class="dropdown-item" href="profile.html"><i class="dw dw-user1"></i>Profile</a>
                    <a class="dropdown-item" href="profile.html"><i class="dw dw-settings2"></i>Setting</a>
                    <a class="dropdown-item" href="faq.html"><i class="dw dw-help"></i>Help</a>
                    <a class="dropdown-item" href="login.aspx"><i class="dw dw-logout"></i>Log Out</a>
                </div>
            </div>
        </div>
        <div class="github-link">
            <a href="https://github.com/dropways/deskapp" target="_blank">
                <img src="vendors/images/github.svg" alt=""/></a>
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
					<div class="col-md-12 col-sm-12">
						<div class="title">
							<h4>Calendar</h4>
						</div>
						<nav aria-label="breadcrumb" role="navigation">
							<ol class="breadcrumb">
								<li class="breadcrumb-item"><a href="index.html">Home</a></li>
								<li class="breadcrumb-item active" aria-current="page">Calendar</li>
							</ol>
						</nav>
					</div>
				</div>
			</div>
			<div class="pd-20 card-box mb-30">
				<div class="calendar-wrap">
					<div id='calendar'></div>
				</div>
				<!-- calendar modal -->
				<div id="modal-view-event" class="modal modal-top fade calendar-modal">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<div class="modal-body">
								<h4 class="h4"><span class="event-icon weight-400 mr-3"></span><span class="event-title"></span></h4>
								<div class="event-body"></div>
							</div>
							<div class="modal-footer">
								<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
							</div>
						</div>
					</div>
				</div>

				<div id="modal-view-event-add" class="modal modal-top fade calendar-modal">
					<div class="modal-dialog modal-dialog-centered">
						<div class="modal-content">
							<form id="add-event">
								<div class="modal-body">
									<h4 class="text-blue h4 mb-10">Add Event Detail</h4>
									<div class="form-group">
										<label>Event name</label>
										<input type="text" class="form-control" name="ename">
									</div>
									<div class="form-group">
										<label>Event Date</label>
										<input type='text' class="datetimepicker form-control" name="edate">
									</div>
									<div class="form-group">
										<label>Event Description</label>
										<textarea class="form-control" name="edesc"></textarea>
									</div>
									<div class="form-group">
										<label>Event Color</label>
										<select class="form-control" name="ecolor">
											<option value="fc-bg-default">fc-bg-default</option>
											<option value="fc-bg-blue">fc-bg-blue</option>
											<option value="fc-bg-lightgreen">fc-bg-lightgreen</option>
											<option value="fc-bg-pinkred">fc-bg-pinkred</option>
											<option value="fc-bg-deepskyblue">fc-bg-deepskyblue</option>
										</select>
									</div>
									<div class="form-group">
										<label>Event Icon</label>
										<select class="form-control" name="eicon">
											<option value="circle">circle</option>
											<option value="cog">cog</option>
											<option value="group">group</option>
											<option value="suitcase">suitcase</option>
											<option value="calendar">calendar</option>
										</select>
									</div>
								</div>
								<div class="modal-footer">
									<button type="submit" class="btn btn-primary" >Save</button>
									<button type="button" class="btn btn-primary" data-dismiss="modal">Close</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
		<div class="footer-wrap pd-20 mb-20 card-box">
			DeskApp - Bootstrap 4 Admin Template By <a href="https://github.com/dropways" target="_blank">Ankit Hingarajiya</a>
		</div>
	</div>
</div>
<!-- js -->
<script src="vendors/scripts/core.js"></script>
<script src="vendors/scripts/script.min.js"></script>
<script src="vendors/scripts/process.js"></script>
<script src="vendors/scripts/layout-settings.js"></script>
<script src="src/plugins/fullcalendar/fullcalendar.min.js"></script>
<script src="vendors/scripts/calendar-setting.js"></script>
    </form>
</body>
</html>
