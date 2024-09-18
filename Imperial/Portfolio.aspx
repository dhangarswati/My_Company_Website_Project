<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Portfolio.aspx.cs" Inherits="ImperialDeskApp.Imperial.Portfolio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>Portfolio - Imperial</title>
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
                    <li><a href="Portfolio.aspx" class="active">Portfolio</a></li>
                    <li><a href="Team.aspx">Team</a></li>
                    <li><a href="../DeskApp/login.aspx">Login</a></li>
                    <li><a href="Contact.aspx">Contact</a></li>
                </ul>
                <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
            </nav>

        </div>
    </header>

    <main class="main">

      <%--   <!-- Hero Section -->
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

        <!-- Portfolio Section -->
        <section id="portfolio" class="portfolio section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>Portfolio</h2>
                <p>
                    Explore our diverse range of successful projects across various domains.
       From custom software solutions to innovative app development, see how we've helped our clients achieve their goals.
                </p>
            </div>
            <!-- End Section Title -->

            <div class="container">

                <div class="isotope-layout" data-default-filter="*" data-layout="masonry" data-sort="original-order">

                    <ul class="portfolio-filters isotope-filters" data-aos="fade-up" data-aos-delay="100">
                        <li data-filter="*" class="filter-active">All</li>
                        <li data-filter=".filter-app">App Development</li>
                        <li data-filter=".filter-web">Web Applications</li>
                    </ul>

                    <!-- End Portfolio Filters -->

                    <div class="row gy-4 isotope-container" data-aos="fade-up" data-aos-delay="200">


                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <img src="assets/img/portfolio/app-1.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Mobile App for E-commerce</h4>
                                <p>Developed a seamless mobile shopping experience for a leading e-commerce platform.</p>
                                <a href="assets/img/portfolio/app-1.jpg" title="Mobile App for E-commerce" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                               <%-- <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-web">
                            <img src="assets/img/portfolio/web-1.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Enterprise Web Application</h4>
                                <p>Designed and developed a scalable web application for enterprise resource planning.</p>
                                <a href="assets/img/portfolio/web-1.jpg" title="Enterprise Web Application" data-gallery="portfolio-gallery-web" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                               <%-- <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>

                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <img src="assets/img/portfolio/app-2.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Fintech Mobile Application</h4>
                                <p>Delivered a secure and user-friendly fintech app for a growing financial startup.</p>
                                <a href="assets/img/portfolio/app-2.jpg" title="Fintech Mobile Application" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                <%--<a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>

                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-web">
                            <img src="assets/img/portfolio/web-2.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Dynamic Web Portal</h4>
                                <p>Developed a dynamic web portal with interactive features for a digital marketing agency.</p>
                                <a href="assets/img/portfolio/web-2.jpg" title="Dynamic Web Portal" data-gallery="portfolio-gallery-web" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                <%--<a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <img src="assets/img/portfolio/app-3.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Healthcare App Development</h4>
                                <p>Created a robust healthcare app to streamline patient management and care coordination.</p>
                                <a href="assets/img/portfolio/app-3.jpg" title="Healthcare App Development" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                               <%-- <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>

                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-web">
                            <img src="assets/img/portfolio/web-3.jpg" class="img-fluid" alt=""/>
                            <div class="portfolio-info">
                                <h4>Interactive Web Platform</h4>
                                <p>Built an interactive web platform with advanced features for a tech startup.</p>
                                <a href="assets/img/portfolio/web-3.jpg" title="Interactive Web Platform" data-gallery="portfolio-gallery-web" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                               <%-- <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>

                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <img src="assets/img/portfolio/app-4.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Food Delivery Application</h4>
                                <p>Designed and developed a mobile app for food delivery with real-time order tracking.</p>
                                <a href="assets/img/portfolio/app-4.jpg" title="Food Delivery Application" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                               <%-- <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-web">
                            <img src="assets/img/portfolio/web-4.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Online Learning Portal</h4>
                                <p>Created a robust online learning portal with integrated video lectures and quizzes.</p>
                                <a href="assets/img/portfolio/web-4.jpg" title="Online Learning Portal" data-gallery="portfolio-gallery-web" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                               <%-- <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>

                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <img src="assets/img/portfolio/app-5.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Fitness Tracking App</h4>
                                <p>Developed a feature-rich fitness app that tracks workouts and diet for users.</p>
                                <a href="assets/img/portfolio/app-5.jpg" title="Fitness Tracking App" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                                <%--<a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-web">
                            <img src="assets/img/portfolio/web-5.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Real Estate Management System</h4>
                                <p>Developed a web application for managing real estate properties, including listings and transactions.</p>
                                <a href="assets/img/portfolio/web-5.jpg" title="Real Estate Management System" data-gallery="portfolio-gallery-web" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                              <%--  <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>
                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-app">
                            <img src="assets/img/portfolio/app-6.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>Travel Booking App</h4>
                                <p>Developed a comprehensive travel booking app with features for hotel reservations, flight bookings, and itinerary management.</p>
                                <a href="assets/img/portfolio/app-6.jpg" title="Travel Booking App" data-gallery="portfolio-gallery-app" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                               <%-- <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>

                        <!-- End Portfolio Item -->

                        <div class="col-lg-4 col-md-6 portfolio-item isotope-item filter-web">
                            <img src="assets/img/portfolio/web-6.jpg" class="img-fluid" alt="" />
                            <div class="portfolio-info">
                                <h4>E-commerce Website</h4>
                                <p>Built a scalable e-commerce website with features for product management, shopping cart, and secure checkout.</p>
                                <a href="assets/img/portfolio/web-6.jpg" title="E-commerce Website" data-gallery="portfolio-gallery-web" class="glightbox preview-link"><i class="bi bi-zoom-in"></i></a>
                               <%-- <a href="portfolio-details.aspx" title="More Details" class="details-link"><i class="bi bi-link-45deg"></i></a>--%>
                            </div>
                        </div>

                        <!-- End Portfolio Item -->

                    </div>
                    <!-- End Portfolio Container -->

                </div>

            </div>

        </section>
        <!-- /Portfolio Section -->
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
