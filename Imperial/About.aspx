<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="ImperialDeskApp.Imperial.About" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta charset="utf-8" />
    <meta content="width=device-width, initial-scale=1.0" name="viewport" />
    <title>About - Imperial</title>
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
                    <li><a href="About.aspx" class="active">About</a></li>
                    <li><a href="Services.aspx">Services</a></li>
                    <li><a href="Portfolio.aspx">Portfolio</a></li>
                    <li><a href="Team.aspx">Team</a></li>
                    <li><a href="../DeskApp/login.aspx">Login</a></li>
                    <li><a href="Contact.aspx">Contact</a></li>
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

        <!-- About Section -->
        <section id="about" class="about section">

            <!-- Section Title -->
            <div class="container section-title" data-aos="fade-up">
                <h2>About</h2>
                <p>Empowering Businesses with Cutting-Edge Software Solutions</p>
            </div>
            <!-- End Section Title -->

            <div class="container">

                <div class="row gy-4">

                    <div class="col-lg-6 order-1 order-lg-2" data-aos="fade-up" data-aos-delay="100">
                        <img src="assets/img/about.jpg" class="img-fluid" alt=""/>
                    </div>

                    <div class="col-lg-6 order-2 order-lg-1 content" data-aos="fade-up" data-aos-delay="200">
                        <h3>Innovative Software for a Dynamic World</h3>
                        <p class="fst-italic">
                            At Imperial Software, we specialize in creating innovative software solutions that drive business success.
              Our team is dedicated to developing cutting-edge technology tailored to meet the unique needs of our clients.
         
                        </p>
                        <ul>
                            <li><i class="bi bi-check-circle"></i><span>Custom Software Development: Tailored solutions that fit your business needs.</span></li>
                            <li><i class="bi bi-check-circle"></i><span>Cloud Services: Scalable and secure cloud solutions for modern enterprises.</span></li>
                            <li><i class="bi bi-check-circle"></i><span>AI and Machine Learning: Transform your data into actionable insights with our AI solutions.</span></li>
                        </ul>
                        <!-- Read More Button -->
                        <a href="#" class="read-more" data-bs-toggle="modal" data-bs-target="#readMoreModal"><span>Read More</span><i class="bi bi-arrow-right"></i></a>
                    </div>
                </div>
            </div>
        </section>
        <!-- /About Section -->
        <!-- Read More Modal -->
        <div class="modal fade" id="readMoreModal" tabindex="-1" aria-labelledby="readMoreModalLabel" aria-hidden="true">
            <div class="modal-dialog">
                <div class="modal-content">
                    <div class="modal-header">
                        <h5 class="modal-title" id="readMoreModalLabel">More About Imperial Software</h5>
                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                    </div>
                    <div class="modal-body">
                        <h4>Our Mission</h4>
                        <p>At Imperial Software, our mission is to empower businesses through innovative technology solutions that drive growth and efficiency. We are committed to providing our clients with cutting-edge tools and services that help them stay ahead in a rapidly evolving digital landscape.</p>
                        <h4>Our Vision</h4>
                        <p>We envision a world where technology is seamlessly integrated into every aspect of business, making operations more efficient and opening up new opportunities for growth. Our goal is to be a leader in the software industry by consistently delivering high-quality products and exceptional customer service.</p>
                        <h4>Our Services</h4>
                        <ul>
                            <li><strong>Web Development:</strong> Building responsive and functional websites that cater to your business needs.</li>
                            <li><strong>Mobile App Development:</strong> Creating user-friendly mobile applications for iOS and Android platforms.</li>
                            <li><strong>Digital Marketing:</strong> Enhancing your online presence through SEO, social media marketing, and content marketing strategies.</li>
                            <li><strong>Data Analytics:</strong> Providing insights and analytics to help you make informed decisions.</li>
                        </ul>
                        <h4>Our Team</h4>
                        <p>Our team is comprised of passionate professionals with a diverse range of skills and expertise. We believe in fostering a collaborative and inclusive work environment where creativity and innovation can thrive.</p>
                        <h4>Achievements</h4>
                        <p>We have been recognized as one of the top software companies in the region, receiving awards for innovation and customer satisfaction. Our solutions have helped numerous businesses achieve their goals and exceed their expectations.</p>
                    </div>
                    <div class="modal-footer">
                        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
                    </div>
                </div>
            </div>
        </div>
        <!-- /Read More Modal -->

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
