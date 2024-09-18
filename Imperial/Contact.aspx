<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Contact.aspx.cs" Inherits="ImperialDeskApp.Imperial.Contact" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Contact - Imperial</title>
    <meta name="description" content="" />
    <meta name="keywords" content="" />

    <!-- Favicons -->
    <link href="assets/img/favicon.png" rel="icon" />
    <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon" />

    <!-- Fonts -->
    <link href="https://fonts.googleapis.com" rel="preconnect" />
    <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin />
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet" />

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" />
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet" />
    <link href="assets/vendor/aos/aos.css" rel="stylesheet" />
    <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet" />
    <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet" />

    <!-- Main CSS File -->
    <link href="assets/css/main.css" rel="stylesheet" />
    <link href="assets/css/custom.css" rel="stylesheet" />

    <!-- =======================================================
  * Template Name: Imperial
  * Template URL: https://bootstrapmade.com/imperial-free-onepage-bootstrap-theme/
  * Updated: Aug 07 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body>
    <header id="header" class="header d-flex align-items-center fixed-top">
        <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

            <a href="Index.aspx" class="logo d-flex align-items-center">
                <h1 class="sitename">Imperial</h1>
            </a>

            <nav id="navmenu" class="navmenu">
                <ul>
                    <li><a href="Index.aspx">Home</a></li>
                    <li><a href="About.aspx">About</a></li>
                    <li><a href="Services.aspx">Services</a></li>
                    <li><a href="Portfolio.aspx">Portfolio</a></li>
                    <li><a href="Team.aspx">Team</a></li>
                    <li><a href="../DeskApp/login.aspx">Login</a></li>
                    <li><a href="Contact.aspx" class="active">Contact</a></li>
                </ul>
                <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
            </nav>

        </div>
    </header>

    <main class="main">

        <%-- <!-- Hero Section -->
        <section id="hero" class="hero section dark-background">

            <img src="assets/img/hero-bg.jpg" class="hero-bg" alt="" data-aos="fade-in" />

            <div class="container text-center" data-aos="fade-up" data-aos-delay="100">
                <img src="assets/img/logo.png" class="img-fluid mb-3" alt="" />
                <h2>Welcome to Imperial studios</h2>
                <p>We create <span class="typed" data-typed-items="Functional Websites, Creative Ads, Mobile Apps"></span></p>
                <div>
                    <a href="About.aspx" class="cta-btn">Get Started</a>
                    <a href="Services.aspx" class="cta-btn2">Our Services</a>
                </div>
            </div>

        </section>
        <!-- /Hero Section -->--%>

        <!-- Contact Section -->
        <section id="contact" class="contact section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Contact</h2>
                <p>Get in touch with our team for any inquiries or support. We're here to help!</p>
            </div>
            <!-- End Section Title -->

            <div class="container" data-aos="fade" data-aos-delay="100">

                <div class="row gy-4">

                    <div class="col-lg-4">
                        <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="200">
                            <i class="bi bi-geo-alt flex-shrink-0"></i>
                            <div>
                                <h3>Office Address</h3>
                                <p>Imperial Software Company, 123 Tech Park, Andheri, Mumbai, Maharashtra 400053</p>
                            </div>
                        </div>
                        <!-- End Info Item -->

                        <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="300">
                            <i class="bi bi-telephone flex-shrink-0"></i>
                            <div>
                                <h3>Call Us</h3>
                                <p>+91 98200 12345</p>
                            </div>
                        </div>
                        <!-- End Info Item -->

                        <div class="info-item d-flex" data-aos="fade-up" data-aos-delay="400">
                            <i class="bi bi-envelope flex-shrink-0"></i>
                            <div>
                                <h3>Email Us</h3>
                                <p>contact@imperialsoftware.com</p>
                            </div>
                        </div>
                        <!-- End Info Item -->

                    </div>

                    <div class="col-lg-8">
                        <form runat="server" data-aos="fade-up" data-aos-delay="200">
                            <div class="row gy-4">

                                <div class="col-md-6">
                                    <%--<input type="text" name="name" class="form-control" placeholder="Your Name" required="">--%>
                                    <asp:TextBox ID="txtName" name="name" class="form-control" placeholder="Your Name" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please Enter Your Name"
                                        ControlToValidate="txtName" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-md-6 ">
                                    <%--<input type="email" class="form-control" name="email" placeholder="Your Email" required="">--%>
                                    <asp:TextBox ID="txtEmail" class="form-control" name="email" placeholder="Your Email" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
                                        ErrorMessage="Email is Required" ControlToValidate="txtEmail" ForeColor="Red"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server"
                                        ErrorMessage="Invalid Email Address" ControlToValidate="txtEmail"
                                        ValidationExpression="^[\w\.-]+@[\w\.-]+\.\w+$" ForeColor="Red"></asp:RegularExpressionValidator>
                                </div>

                                <div class="col-md-12">
                                    <%--<input type="text" class="form-control" name="subject" placeholder="Subject" required="">--%>
                                    <asp:TextBox ID="txtSubject" runat="server" class="form-control" name="subject" placeholder="Subject"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please Enter Subject"
                                        ControlToValidate="txtSubject" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-md-12">
                                    <%--<textarea class="form-control" name="message" rows="6" placeholder="Message" required=""></textarea>--%>
                                    <textarea id="textareaMessage" runat="server" class="form-control" name="message" rows="4" placeholder="Message"></textarea>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Message Required"
                                        ControlToValidate="textareaMessage" ForeColor="Red"></asp:RequiredFieldValidator>
                                </div>

                                <div class="col-md-12 text-center">
                                    <%--<div class="loading">Loading</div>
                                    <div class="error-message"></div>
                                    <div class="sent-message">Your message has been sent. Thank you!</div>--%>

                                    <%--<button type="submit">Send Message</button>--%>
                                    <asp:Button ID="btnSubmit" runat="server" Text="Send Message" OnClick="btnSubmit_Click" />
                                    <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                                    <asp:Label ID="lblSubmit" runat="server" Text=""></asp:Label>
                                </div>

                            </div>
                        </form>
                    </div>
                    <!-- End Contact Form -->

                </div>

            </div>

        </section>
        <!-- /Contact Section -->

    </main>

    <footer id="footer" class="footer dark-background">

        <div class="container">
            <div class="row gy-3">
                <div class="col-lg-3 col-md-6 d-flex">
                    <i class="bi bi-geo-alt icon"></i>
                    <div class="address">
                        <h4>Address</h4>
                        <p>Imperial Software Company</p>
                        <p>123 Tech Park, Andheri</p>
                        <p>Mumbai, Maharashtra 400053</p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-flex">
                    <i class="bi bi-telephone icon"></i>
                    <div>
                        <h4>Contact</h4>
                        <p>
                            <strong>Phone:</strong> <span>+91 98200 12345</span><br />
                            <strong>Email:</strong> <span>contact@imperialsoftware.com</span><br />
                        </p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6 d-flex">
                    <i class="bi bi-clock icon"></i>
                    <div>
                        <h4>Opening Hours</h4>
                        <p>
                            <strong>Mon-Fri:</strong> <span>9AM - 6PM</span><br />
                            <strong>Saturday:</strong> <span>10AM - 4PM</span><br />
                            <strong>Sunday:</strong> <span>Closed</span>
                        </p>
                    </div>
                </div>

                <div class="col-lg-3 col-md-6">
                    <h4>Follow Us</h4>
                    <div class="social-links d-flex">
                        <a href="https://twitter.com/imperialsoftware" class="twitter" target="_blank"><i class="bi bi-twitter"></i></a>
                        <a href="https://facebook.com/imperialsoftware" class="facebook" target="_blank"><i class="bi bi-facebook"></i></a>
                        <a href="https://instagram.com/imperialsoftware" class="instagram" target="_blank"><i class="bi bi-instagram"></i></a>
                        <a href="https://linkedin.com/company/imperialsoftware" class="linkedin" target="_blank"><i class="bi bi-linkedin"></i></a>
                    </div>
                </div>

            </div>
        </div>

        <div class="container copyright text-center mt-4">
            <p>© <span>Copyright</span> <strong class="px-1 sitename">Imperial Software</strong> <span>All Rights Reserved</span></p>
            <div class="credits">
                Designed by <a href="https://bootstrapmade.com/">Swati Dhangar</a>
            </div>
        </div>

    </footer>

    <!-- Scroll Top -->
    <a href="#" id="scroll-top" class="scroll-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

    <!-- Preloader -->
    <div id="preloader"></div>

    <!-- Vendor JS Files -->
    <script src="assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="assets/vendor/php-email-form/validate.js"></script>
    <script src="assets/vendor/aos/aos.js"></script>
    <script src="assets/vendor/typed.js/typed.umd.js"></script>
    <script src="assets/vendor/glightbox/js/glightbox.min.js"></script>
    <script src="assets/vendor/imagesloaded/imagesloaded.pkgd.min.js"></script>
    <script src="assets/vendor/isotope-layout/isotope.pkgd.min.js"></script>
    <script src="assets/vendor/swiper/swiper-bundle.min.js"></script>

    <!-- Main JS File -->
    <script src="assets/js/main.js"></script>
</body>
</html>
