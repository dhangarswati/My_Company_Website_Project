<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="it-consulting-support.aspx.cs" Inherits="ImperialDeskApp.Imperial.it_consulting_support" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>Services - Imperial</title>
  <meta name="description" content=""/>
  <meta name="keywords" content=""/>

  <!-- Favicons -->
  <link href="assets/img/favicon.png" rel="icon"/>
  <link href="assets/img/apple-touch-icon.png" rel="apple-touch-icon"/>

  <!-- Fonts -->
  <link href="https://fonts.googleapis.com" rel="preconnect"/>
  <link href="https://fonts.gstatic.com" rel="preconnect" crossorigin/>
  <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&family=Open+Sans:ital,wght@0,300;0,400;0,500;0,600;0,700;0,800;1,300;1,400;1,500;1,600;1,700;1,800&family=Raleway:ital,wght@0,100;0,200;0,300;0,400;0,500;0,600;0,700;0,800;0,900;1,100;1,200;1,300;1,400;1,500;1,600;1,700;1,800;1,900&display=swap" rel="stylesheet"/>

  <!-- Vendor CSS Files -->
  <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"/>
  <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet"/>
  <link href="assets/vendor/aos/aos.css" rel="stylesheet"/>
  <link href="assets/vendor/glightbox/css/glightbox.min.css" rel="stylesheet"/>
  <link href="assets/vendor/swiper/swiper-bundle.min.css" rel="stylesheet"/>

  <!-- Main CSS File -->
  <link href="assets/css/main.css" rel="stylesheet"/>

  <!-- =======================================================
  * Template Name: Imperial
  * Template URL: https://bootstrapmade.com/imperial-free-onepage-bootstrap-theme/
  * Updated: Aug 07 2024 with Bootstrap v5.3.3
  * Author: BootstrapMade.com
  * License: https://bootstrapmade.com/license/
  ======================================================== -->
</head>
<body class="service-details-page">

    <header id="header" class="header d-flex align-items-center fixed-top">
        <div class="container-fluid container-xl position-relative d-flex align-items-center justify-content-between">

            <a href="Index.aspx" class="logo d-flex align-items-center">
                <h1 class="sitename">Imperial</h1>
            </a>

            <nav id="navmenu" class="navmenu">
                <ul>
                    <li><a href="Index.aspx" class="active">Home</a></li>
                    <li><a href="About.aspx">About</a></li>
                    <li><a href="Services.aspx">Services</a></li>
                    <li><a href="Portfolio.aspx">Portfolio</a></li>
                    <li><a href="Team.aspx">Team</a></li>
                    <li><a href="login.aspx">Login</a></li>
                    <li><a href="Contact.aspx">Contact</a></li>
                </ul>
                <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
            </nav>

        </div>
    </header>
        <main class="main">
        <!-- Page Title -->
        <div class="page-title dark-background">
            <div class="container position-relative">
                <h1>IT Consulting & Support</h1>
                <p>Optimize your IT infrastructure and enhance operational efficiency with our expert consulting and support services.</p>
                <nav class="breadcrumbs">
                    <ol>
                        <li><a href="Index.aspx">Home</a></li>
                        <li><a href="Services.aspx">Services</a></li>
                        <li>IT Consulting & Support</li>
                    </ol>
                </nav>
            </div>
        </div>
        <!-- End Page Title -->

        <!-- Service Details Section -->
        <section id="service-details" class="service-details section">
            <div class="container">
                <div class="row gy-4">
                    <div class="col-lg-4">
                        <div class="services-list">
                            <!-- Links to all service pages -->
                            <a href="custom-software-development.aspx">Custom Software Development</a>
                            <a href="project-management-tools.aspx">Project Management Tools</a>
                            <a href="data-analytics.aspx">Data Analytics & BI</a>
                            <a href="cloud-solutions.aspx">Cloud Solutions</a>
                            <a href="ai-machine-learning.aspx">AI & Machine Learning</a>
                            <a href="it-consulting-support.aspx" class="active">IT Consulting & Support</a>
                        </div>
                        <h4>Expert IT Consulting & Support</h4>
                        <p>We provide comprehensive IT consulting and support services to help businesses optimize their IT infrastructure and improve operational efficiency.</p>
                    </div>
                    <div class="col-lg-8">
                        <img src="assets/img/services-it-consulting-support.jpg" alt="IT Consulting & Support" class="img-fluid services-img"/>
                        <h3>Comprehensive IT Solutions</h3>
                        <p>Our IT consulting and support services are designed to help businesses of all sizes optimize their IT infrastructure, improve operational efficiency, and ensure the security of their systems.</p>
                        <ul>
                            <li><i class="bi bi-check-circle"></i><span>IT infrastructure assessment and optimization.</span></li>
                            <li><i class="bi bi-check-circle"></i><span>Technical support and managed IT services.</span></li>
                            <li><i class="bi bi-check-circle"></i><span>Security and compliance consulting.</span></li>
                        </ul>
                        <p>Partner with us to ensure your IT systems are running smoothly, securely, and efficiently, enabling you to focus on growing your business.</p>
                    </div>
                </div>
            </div>
        </section>
        <!-- End Service Details Section -->
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
