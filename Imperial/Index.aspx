<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="ImperialDeskApp.Imperial.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head>
  <meta charset="utf-8"/>
  <meta content="width=device-width, initial-scale=1.0" name="viewport"/>
  <title>Index - Imperial</title>
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
<body class="index-page">
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
                  <li><a href="../DeskApp/login.aspx">Login</a></li>
                  <li><a href="Contact.aspx">Contact</a></li>
              </ul>
              <i class="mobile-nav-toggle d-xl-none bi bi-list"></i>
          </nav>

      </div>
  </header>

<main class="main">

  <!-- Hero Section -->
    <section id="hero" class="hero section dark-background">

        <img src="assets/img/hero-bg.jpg" class="hero-bg" alt="" data-aos="fade-in" />

        <div class="container text-center" data-aos="fade-up" data-aos-delay="100">
            <img src="assets/img/logo.png" class="img-fluid mb-3" alt="" />
            <h2>Welcome to Imperial studios</h2>
            <p>We create <span class="typed" data-typed-items="Functional Websites, Digital Marketing, Mobile Apps"></span></p>
            <div>
                <a href="About.aspx" class="cta-btn">Get Started</a>
                <a href="Services.aspx" class="cta-btn2">Our Services</a>
            </div>
        </div>

    </section>
  <!-- /Hero Section -->

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
            <li><i class="bi bi-check-circle"></i> <span>Custom Software Development: Tailored solutions that fit your business needs.</span></li>
            <li><i class="bi bi-check-circle"></i> <span>Cloud Services: Scalable and secure cloud solutions for modern enterprises.</span></li>
            <li><i class="bi bi-check-circle"></i> <span>AI and Machine Learning: Transform your data into actionable insights with our AI solutions.</span></li>
          </ul>
          <%--<a href="#" class="read-more"><span>Read More</span><i class="bi bi-arrow-right"></i></a>--%>
        </div>

      </div>

    </div>

  </section>
  <!-- /About Section -->

 <%-- <!-- Services Section -->
  <!-- /Services Section -->--%>

  <!-- Features Section -->
  <section id="features" class="features section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>Features</h2>
      <p>Discover the Core Features that Drive Our Software Solutions</p>
    </div><!-- End Section Title -->

    <div class="container">

      <div class="row gy-4">

        <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="100">
          <div class="feature-box orange">
            <i class="bi bi-award"></i>
            <h4>Industry-Leading Innovation</h4>
            <p>Our solutions are built on cutting-edge technology, ensuring your business stays ahead in a rapidly evolving landscape.</p>
          </div>
        </div><!-- End Feature Box-->

        <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="200">
          <div class="feature-box blue">
            <i class="bi bi-patch-check"></i>
            <h4>Robust Security</h4>
            <p>We prioritize security at every step, providing robust protection for your data and business operations.</p>
          </div>
        </div><!-- End Feature Box-->

        <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="300">
          <div class="feature-box green">
            <i class="bi bi-sunrise"></i>
            <h4>Scalable Solutions</h4>
            <p>Our software is designed to grow with your business, offering scalability to meet increasing demands and challenges.</p>
          </div>
        </div><!-- End Feature Box-->

        <div class="col-xl-3 col-md-6" data-aos="zoom-in" data-aos-delay="400">
          <div class="feature-box red">
            <i class="bi bi-shield-check"></i>
            <h4>Comprehensive Support</h4>
            <p>We provide ongoing support and maintenance, ensuring your software runs smoothly and efficiently at all times.</p>
          </div>
        </div><!-- End Feature Box-->

      </div>

    </div>

  </section>
 <!-- /Features Section -->

  <!-- Call To Action Section -->
  <section id="call-to-action" class="call-to-action section dark-background">

    <img src="assets/img/cta-bg1.jpg" alt=""/>

    <div class="container">

      <div class="row" data-aos="zoom-in" data-aos-delay="100">
        <div class="col-xl-9 text-center text-xl-start">
            <h3>Ready to Transform Your Business?</h3>
            <p>Empower your business with our innovative software solutions. Whether you’re looking to streamline operations, enhance productivity, or drive growth, 
            Imperial Software has the expertise to make it happen. Let’s work together to create the future of your business.</p>
        </div>
        <div class="col-xl-3 cta-btn-container text-center">
           <!-- Get Started Now Button triggering the modal -->
           <a class="cta-btn align-middle" href="#" data-bs-toggle="modal" data-bs-target="#getStartedModal">Get Started Now</a>
        </div>
      </div>

    </div>

  </section>
 <!-- /Call To Action Section -->
 <!-- Modal Structure -->
<div class="modal fade" id="getStartedModal" tabindex="-1" aria-labelledby="getStartedModalLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="getStartedModalLabel">More Information</h5>
        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
      </div>
      <div class="modal-body">
        <!-- Modal Content -->
        <p>Imperial Software offers a wide range of solutions tailored to your business needs. Whether you need custom software development, cloud solutions, or IT consulting, we have the expertise to help your business thrive. Our team works closely with you to understand your goals and deliver solutions that exceed your expectations.</p>
        <p>Ready to take the next step? Fill out our contact form or call us directly to discuss how we can help you achieve your business objectives.</p>
        <!-- You can add more detailed information or even a form here -->
      </div>
      <div class="modal-footer">
        <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Close</button>
        <a href="Contact.aspx" class="btn btn-primary">Contact Us</a>
      </div>
    </div>
  </div>
</div>
<!-- /Modal Structure -->

 <%-- <!-- Portfolio Section -->
  <!-- /Portfolio Section -->--%>

  <!-- Testimonials Section -->
  <section id="testimonials" class="testimonials section">

    <!-- Section Title -->
    <div class="container section-title" data-aos="fade-up">
      <h2>Testimonials</h2>
      <p>Here's what our clients from across Maharashtra have to say about our software solutions and services.</p>
    </div><!-- End Section Title -->

    <div class="container" data-aos="fade-up" data-aos-delay="100">

      <div class="swiper init-swiper">
        <script type="application/json" class="swiper-config">
          {
            "loop": true,
            "speed": 600,
            "autoplay": {
              "delay": 5000
            },
            "slidesPerView": "auto",
            "pagination": {
              "el": ".swiper-pagination",
              "type": "bullets",
              "clickable": true
            }
          }
        </script>
        <div class="swiper-wrapper">

          <div class="swiper-slide">
            <div class="testimonial-item">
              <div class="row gy-4 justify-content-center">
                <div class="col-lg-6">
                    <div class="testimonial-content">
                        <p>
                            <i class="bi bi-quote quote-icon-left"></i>
                            <span>"Imperial Software's custom CRM solution has transformed how we manage client interactions. Their team's dedication is truly commendable."</span>
                            <i class="bi bi-quote quote-icon-right"></i>
                        </p>
                        <h3>Rohit Patil</h3>
                        <h4>CEO &amp; Founder, Patil Enterprises</h4>
                        <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 text-center">
                  <img src="assets/img/testimonials/testimonials-1.jpg" class="img-fluid testimonial-img" alt=""/>
                </div>
              </div>
            </div>
          </div><!-- End testimonial item -->

          <div class="swiper-slide">
            <div class="testimonial-item">
              <div class="row gy-4 justify-content-center">
                <div class="col-lg-6">
                    <div class="testimonial-content">
                        <p>
                            <i class="bi bi-quote quote-icon-left"></i>
                            <span>"The mobile app development team at Imperial Software exceeded our expectations. Their attention to detail and post-launch support is outstanding."</span>
                            <i class="bi bi-quote quote-icon-right"></i>
                        </p>
                        <h3>Sneha Deshmukh</h3>
                        <h4>Designer, Deshmukh Creations</h4>
                        <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 text-center">
                  <img src="assets/img/testimonials/testimonials-2.jpg" class="img-fluid testimonial-img" alt=""/>
                </div>
              </div>
            </div>
          </div><!-- End testimonial item -->

          <div class="swiper-slide">
            <div class="testimonial-item">
              <div class="row gy-4 justify-content-center">
                <div class="col-lg-6">
                    <div class="testimonial-content">
                        <p>
                            <i class="bi bi-quote quote-icon-left"></i>
                            <span>"We partnered with Imperial Software for our e-commerce platform, and the results have been phenomenal. Highly recommended for their expertise."</span>
                            <i class="bi bi-quote quote-icon-right"></i>
                        </p>
                        <h3>Priya Gaikwad</h3>
                        <h4>Entrepreneur, Gaikwad Solutions</h4>
                        <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 text-center">
                  <img src="assets/img/testimonials/testimonials-3.jpg" class="img-fluid testimonial-img" alt=""/>
                </div>
              </div>
            </div>
          </div><!-- End testimonial item -->

          <div class="swiper-slide">
            <div class="testimonial-item">
              <div class="row gy-4 justify-content-center">
                <div class="col-lg-6">
                    <div class="testimonial-content">
                        <p>
                            <i class="bi bi-quote quote-icon-left"></i>
                            <span>"Their cloud solutions have significantly improved our operational efficiency. Imperial Software is a trusted partner in our growth."</span>
                            <i class="bi bi-quote quote-icon-right"></i>
                        </p>
                        <h3>Vishal Kulkarni</h3>
                        <h4>Store Owner, Kulkarni Mart</h4>
                        <div class="stars">
                            <i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i><i class="bi bi-star-fill"></i>
                        </div>
                    </div>
                </div>
                <div class="col-lg-2 text-center">
                  <img src="assets/img/testimonials/testimonials-4.jpg" class="img-fluid testimonial-img" alt=""/>
                </div>
              </div>
            </div>
          </div><!-- End testimonial item -->

        </div>
        <div class="swiper-pagination"></div>
      </div>

    </div>

  </section><!-- /Testimonials Section -->

 <%-- <!-- Team Section -->
 <!-- /Team Section -->

  <!-- Contact Section -->
  <!-- /Contact Section -->--%>

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
