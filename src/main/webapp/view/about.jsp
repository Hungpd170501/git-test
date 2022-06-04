<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

<head>
        <jsp:include page="./include/header.jsp">
            <jsp:param name="title" value="FuJob | About Us"/>
        </jsp:include>
</head>

<body>
    <jsp:include page="./components/loader.jsp"></jsp:include>
    <jsp:include page="./include/navbar.jsp"></jsp:include>

<<<<<<< HEAD
    <!-- Navigation Bar-->
    <header id="topnav" class="defaultscroll scroll-active">
        <!-- Tagline STart -->
        <div class="tagline">
            <div class="container">
                <div class="float-left">
                    <div class="phone">
                        <i class="mdi mdi-phone-classic"></i> +84 367482513
                    </div>
                    <div class="email">
                        <a href="#">
                            <i class="mdi mdi-email"></i> FuJob@mail.com
                        </a>
                    </div>
                </div>
                <div class="float-right">
                    <ul class="topbar-list list-unstyled d-flex" style="margin: 11px 0px;">
                        <li class="list-inline-item"><a href="javascript:void(0);"><i class="mdi mdi-account mr-2"></i>Benny Simpson</a></li>
                        <li class="list-inline-item">
                            <select id="select-lang" class="demo-default">
                                <option value="">Language</option>
                                <option value="4">English</option>
                                <option value="1">Spanish</option>
                                <option value="3">French</option>
                                <option value="5">Hindi</option>
                            </select>
                        </li>
                    </ul>
                </div>
                <div class="clearfix"></div>
            </div>
        </div>
        <!-- Tagline End -->

        <!-- Menu Start -->
        <div class="container">
            <!-- Logo container-->
            <div>
                <a href="index.html" class="logo">
                    <img src="images/logo-light.png" alt="" class="logo-light" height="18" />
                    <img src="images/logo-dark.png" alt="" class="logo-dark" height="18" />
                </a>
            </div>                 
            <div class="buy-button">
                <a href="post-a-job.html" class="btn btn-primary"><i class="mdi mdi-cloud-upload"></i> Post a Job</a>
            </div><!--end login button-->
            <!-- End Logo container-->
            <div class="menu-extras">
                <div class="menu-item">
                    <!-- Mobile menu toggle-->
                    <a class="navbar-toggle">
                        <div class="lines">
                            <span></span>
                            <span></span>
                            <span></span>
                        </div>
                    </a>
                    <!-- End mobile menu toggle-->
                </div>
            </div>
    
            <div id="navigation">
                <!-- Navigation Menu-->   
                <ul class="navigation-menu">
                    <li><a href="index.html">Home</a></li>
                    <li class="has-submenu">
                        <a href="javascript:void(0)">Jobs</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li><a href="job-list.html">Job List</a></li>
                            <li><a href="job-grid.html">Job Grid</a></li>
                            <li><a href="job-details.html">Job Details</a></li>
                            <li><a href="job-details-2.html">Job Details-2</a></li>
                        </ul>
                    </li>
    
                    <li class="has-submenu">
                        <a href="javascript:void(0)">Pages</a><span class="menu-arrow"></span>
                        <ul class="submenu">
                            <li><a href="about.html">About us</a></li>
                            <li><a href="services.html">Services</a></li>
                            <li><a href="team.html">Team</a></li>
                            <li><a href="faq.html">Faqs</a></li>
                            <li><a href="pricing.html">Pricing plans</a></li>
                            <li class="has-submenu"><a href="javascript:void(0)"> Candidates</a><span class="submenu-arrow"></span>
                                <ul class="submenu">
                                    <li><a href="candidates-listing.html">Candidates Listing</a></li>
                                    <li><a href="candidates-profile.html">Candidates Profile</a></li>
                                    <li><a href="create-resume.html">Create Resume</a></li>
                                </ul>  
                            </li>
                            <li class="has-submenu"><a href="javascript:void(0)"> Blog</a><span class="submenu-arrow"></span>
                                <ul class="submenu">
                                    <li><a href="blog-grid.html">Blogs</a></li>
                                    <li><a href="blog-sidebar.html">Blog Sidebar</a></li>
                                    <li><a href="blog-details.html">Blog Details</a></li>
                                </ul>  
                            </li>
                            <li class="has-submenu"><a href="javascript:void(0)"> Employers</a><span class="submenu-arrow"></span>
                                <ul class="submenu">
                                    <li><a href="employers-list.html">Employers List</a></li>
                                    <li><a href="company-detail.html">Company Detail</a></li>
                                </ul>  
                            </li>
                            <li class="has-submenu"><a href="javascript:void(0)"> User Pages</a><span class="submenu-arrow"></span>
                                <ul class="submenu">
                                    <li><a href="login.html">Login</a></li>
                                    <li><a href="signup.html">Signup</a></li>
                                    <li><a href="recovery_passward.html">Forgot Password</a></li>
                                </ul>  
                            </li>
                            <li><a href="components.html"> Components</a></li>
                        </ul>
                    </li>
                    <li>
                        <a href="contact.html">contact</a>
                    </li>
                </ul><!--end navigation menu-->
            </div><!--end navigation-->
        </div><!--end container-->
        <!--end end-->
    </header><!--end header-->
    <!-- Navbar End -->
    
=======
>>>>>>> f10208ba2d394cc80a0851e1508e85b1bb39ddc7
    <!-- Start home -->
    <section class="bg-half page-next-level"> 
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-md-6">
                    <div class="text-center text-white">
                        <h4 class="text-uppercase title mb-4">About Us</h4>
                        <ul class="page-next d-inline-block mb-0">
                            <li><a href="index.html" class="text-uppercase font-weight-bold">Home</a></li>
                            <li><a href="#" class="text-uppercase font-weight-bold">Pages</a></li> 
                            <li>
                                <span class="text-uppercase text-white font-weight-bold">About</span> 
                            </li> 
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- end home -->

    <!-- ABOUT US START -->
    <section class="section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-4 col-md-3">
                    <img src="https://cpad.ask.fm/233/987/771/-59996973-1tm75bm-61lhsk0efc6o1fp/original/file.jpg" class="img-fluid rounded shadow" alt="">
                </div>

                <div class="col-lg-7 col-md-8">
                    <div class="about-desc ml-lg-4">
                        <h4 class="text-dark">About us</h4>

                        <p class="text-muted">Matching the right people to the right jobs is a very difficult problem in Vietnam, a challenge for any recruitment platform. With the goal of applying technology to change the recruitment market and make human resources more efficient, in early 2022, the idea of FUJob was born.</p>

                        <p class="text-muted">Using technology, we create a platform that allows workers to find jobs, learn about companies and interact with employers.</p>

                        <p class="text-muted">Every day, we connect thousands of people with new job opportunities from reputable businesses.</p>
<<<<<<< HEAD

                        <a href="javascript:void(0)" class="btn btn-primary">Apply now</a>
=======
>>>>>>> f10208ba2d394cc80a0851e1508e85b1bb39ddc7
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- ABOUT US END -->

    <!-- COUNTER START -->
    <section class="section bg-light">
        <div class="container">
            <div class="blog-post-counter">
                <div class="row" id="counter">
                    <div class="col-md-3 col-6 border-right">
                        <div class="p-4">
                            <div class="blog-post counter-content text-center">
                                <h1 class="counter-value font-weight-light text-dark mb-2" data-count="150">0</h1>
                                <p class="counter-name text-muted f-15 text-uppercase mb-2">Jobs</p>
                                <i class="mdi mdi-account-multiple h3 text-muted"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-6 border-right">
                        <div class="p-4">
                            <div class="blog-post counter-content text-center">
                                <h1 class="counter-value font-weight-light text-dark mb-2" data-count="210">0</h1>
                                <p class="counter-name text-muted f-15 text-uppercase mb-2">Applications</p>
                                <i class="mdi mdi-file h3 text-muted"></i>
                            </div>
                        </div>
                    </div>

                    <div class="col-md-3 col-6 border-right">
                        <div class="p-4">
                            <div class="blog-post counter-content text-center">
                                <h1 class="counter-value font-weight-light text-dark mb-2" data-count="101">0</h1>
                                <p class="counter-name text-muted f-15 text-uppercase mb-2">Companies</p>
                                <i class="mdi mdi-bank h3 text-muted"></i>
                            </div>
                        </div>
                    </div>
                    <div class="col-md-3 col-6">
                        <div class="p-4">
                            <div class="blog-post counter-content text-center">
                                <h1 class="counter-value font-weight-light text-dark mb-2" data-count="300">0</h1>
                                <p class="counter-name text-muted f-15 text-uppercase mb-2">Employers</p>
                                <i class="mdi mdi-account-group h3 text-muted"></i>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- COUNTER END -->

    <!-- COMPANY TESTIMONIAL START -->
    <section class="section">
        <div class="container">
            <div class="row align-items-center">
                <div class="col-lg-5">
                    <h4 class="text-dark font-weight-">Group Menbers</h4>
                    <div class="blog-post-border mt-3 mb-3"></div>
                    <h5 class="text-muted mb-1">FuJob</h5>
<!--                    <p class="mb-4 f-16"><a href="" class="text-muted"><i class="mdi mdi-earth mr-2"></i>FuJobltd.co.in</a></p>-->
                    <p class="text-muted f-14">Members of group include:</p>
                    <div class="job-details-desc-item">
                        <div class="float-left mr-3">
                            <i class="mdi mdi-minus text-muted f-16"></i>
                        </div>
                        <p class="text-muted f-14 mb-1">Le Ha Duy</p>
                    </div>
                    <div class="job-details-desc-item">
                        <div class="float-left mr-3">
                            <i class="mdi mdi-minus text-muted f-16"></i>
                        </div>
                        <p class="text-muted f-14 mb-1">Huynh Ngo Gia Bao</p>
                    </div>
                    <div class="job-details-desc-item">
                        <div class="float-left mr-3">
                            <i class="mdi mdi-minus text-muted f-16"></i>
                        </div>
                        <p class="text-muted f-14 mb-1">Nguyen Quoc Binh</p>
                    </div>
                    <div class="job-details-desc-item mb-4">
                        <div class="float-left mr-3">
                            <i class="mdi mdi-minus text-muted f-16"></i>
                        </div>
                        <p class="text-muted f-14 mb-1">Pham Duc Hung</p>
                    </div>
                    <p class="text-muted f-14">We are always trying to be better</p>
                    

                    <ul class="list-inline pt-4 border-top mb-4">
                        <li class="list-inline-item float-right mt-2">
                            <ul class="list-inline bolg-post-icon mb-0">
                                <li class="list-inline-item f-20"><a href="" class=""><i class="mdi mdi-facebook"></i></a></li>
                                <li class="list-inline-item f-20"><a href="" class=""><i class="mdi mdi-twitter"></i></a></li>
                                <li class="list-inline-item f-20"><a href="" class=""><i class="mdi mdi-whatsapp"></i></a></li>
                                <li class="list-inline-item f-20"><a href="" class=""><i class="mdi mdi-instagram"></i></a></li>
                            </ul>
                        </li>
                    </ul>
                </div>

                <div class="col-lg-7">
                    <div class="blog-post-testi">
                        <div class="row align-items-center">
                            <div class="col-md-3 col-4">
                                <div class="nav flex-column nav-pills" id="v-pills-tab" role="tablist" aria-orientation="vertical">
                                    <a class="nav-link about-us active" id="v-pills-home-tab" data-toggle="pill" href="#v-pills-home" role="tab" aria-controls="v-pills-home" aria-selected="true">
                                        <div class="blog-post-testi-img">
                                            <img src="https://wefresher.com/wp-content/uploads/2019/08/vai-tro-cua-lam-viec-nhom.jpg" alt="" class="img-fluid mx-auto d-block rounded">
                                            <div class="blog-post-overlay">
                                                <div class="blog-post-testi-icon text-center">
                                                    <i class="mdi mdi-plus-circle-outline text-white h4"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <a class="nav-link about-us" id="v-pills-profile-tab" data-toggle="pill" href="#v-pills-profile" role="tab" aria-controls="v-pills-profile" aria-selected="false">
                                        <div class="blog-post-testi-img">
                                            <img src="https://wiindi.net/DContent/Image/2021/01/Teamwork-la-gi-2.jpg" alt="" class="img-fluid mx-auto d-block rounded">
                                            <div class="blog-post-overlay">
                                                <div class="blog-post-testi-icon text-center">
                                                    <i class="mdi mdi-plus-circle-outline text-white h4"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <a class="nav-link about-us" id="v-pills-messages-tab" data-toggle="pill" href="#v-pills-messages" role="tab" aria-controls="v-pills-messages" aria-selected="false">
                                        <div class="blog-post-testi-img">
                                            <img src="https://www.waltonswords.com.au/wp-content/uploads/2020/06/Teamwork.jpg" alt="" class="img-fluid mx-auto d-block rounded">
                                            <div class="blog-post-overlay">
                                                <div class="blog-post-testi-icon text-center">
                                                    <i class="mdi mdi-plus-circle-outline text-white h4"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                    <a class="nav-link about-us" id="v-pills-settings-tab" data-toggle="pill" href="#v-pills-settings" role="tab" aria-controls="v-pills-settings" aria-selected="false">
                                        <div class="blog-post-testi-img">
                                            <img src="https://content.gallup.com/origin/gallupinc/GallupSpaces/Production/Cms/CSFCMSEN/0is3e-sptkgyxm1kkblkgq.jpg" alt="" class="img-fluid mx-auto d-block rounded">
                                            <div class="blog-post-overlay">
                                                <div class="blog-post-testi-icon text-center">
                                                    <i class="mdi mdi-plus-circle-outline text-white h4"></i>
                                                </div>
                                            </div>
                                        </div>
                                    </a>

                                </div>
                            </div>
                            <div class="col-md-9 col-8">
                                <div class="tab-content" id="v-pills-tabContent">
                                    <div class="tab-pane fade show active" id="v-pills-home" role="tabpanel" aria-labelledby="v-pills-home-tab">
                                        <div>
                                            <img src="https://wefresher.com/wp-content/uploads/2019/08/vai-tro-cua-lam-viec-nhom.jpg" alt="" class="img-fluid mx-auto d-block rounded">
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-profile" role="tabpanel" aria-labelledby="v-pills-profile-tab">
                                        <div>
                                            <img src="https://wiindi.net/DContent/Image/2021/01/Teamwork-la-gi-2.jpg" alt="" class="img-fluid mx-auto d-block rounded">
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-messages" role="tabpanel" aria-labelledby="v-pills-messages-tab">
                                        <div>
                                            <img src="https://www.waltonswords.com.au/wp-content/uploads/2020/06/Teamwork.jpg" alt="" class="img-fluid mx-auto d-block rounded">
                                        </div>
                                    </div>

                                    <div class="tab-pane fade" id="v-pills-settings" role="tabpanel" aria-labelledby="v-pills-settings-tab">
                                        <div>
                                            <img src="https://content.gallup.com/origin/gallupinc/GallupSpaces/Production/Cms/CSFCMSEN/0is3e-sptkgyxm1kkblkgq.jpg" alt="" class="img-fluid mx-auto d-block rounded">
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- COMPANY TESTIMONIAL START -->

    <!-- DOWNLOAD APP START -->
<!--    <section class="section pb-0" style="background: url('https://via.placeholder.com/2000X1333//88929f/5a6270C/O https://placeholder.com/') center center;">
        <div class="bg-overlay"></div>
        <div class="container">
            <div class="row align-items-center">
                <div class="col-md-6 order-md-1 order-2">
                    <div class="job-about-app-img mt-40">
                        <img src="images/app-download-img.png" alt="" class="img-fluid mx-auto d-block">
                    </div>
                </div>

                <div class="col-md-6 order-md-2 order-1">
                    <div class="app-about-content">
                        <div class="app-about-desc text-white">
                            <h4 class="text-white mb-3">Get Job App For Your Mobile</h4>
                            <p class="font-weight-light text-white-50">Etiam ultricies nisi vel that augue Curabitur ullamcorper ultricies adipiscing Nam at Etiam rhoncus Maecenas tempus tellus rhoncus ultricies eget condimentum rhoncus massa Sed cursus semquam.</p>
                            <ul class="list-unstyled mb-0">
                                <li class="list-inline-item"><a href="javascript:void(0)"><img src="images/apple.png" class="mt-2" height="60" alt=""></a></li>
                                <li class="list-inline-item"><a href="javascript:void(0)"><img src="images/google.png" class="mt-2" height="60" alt=""></a></li>
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>-->
    <!-- DOWNLOAD APP END -->

    <!-- ABOUT CLIENTS START -->
    <section class="section">
        <div class="container">
            <div class="row justify-content-center">
                <div class="col-12">
                    <div class="section-title text-center mb-4 pb-2">
                        <h4 class="title title-line pb-5">Our Client's</h4>
                        <p class="text-muted para-desc mx-auto mb-1">Post a job to tell us about your project. We'll quickly match you with the right freelancers.</p>
                    </div>
                </div>
            </div>

            <div class="row align-items-center">
                <div class="col-lg-2 col-md-4 col-6 mt-4 pt-2 text-center">
                    <img src="${pageContext.request.contextPath}/asset/images/clients/1.png" height="50" alt="">
                </div><!--end col-->
                <div class="col-lg-2 col-md-4 col-6 mt-4 pt-2 text-center">
                    <img src="${pageContext.request.contextPath}/asset/images/clients/2.png" height="50" alt="">
                </div><!--end col-->
                <div class="col-lg-2 col-md-4 col-6 mt-4 pt-2 text-center">
                    <img src="${pageContext.request.contextPath}/asset/images/clients/3.png" height="50" alt="">
                </div><!--end col-->
                <div class="col-lg-2 col-md-4 col-6 mt-4 pt-2 text-center">
                    <img src="${pageContext.request.contextPath}/asset/images/clients/4.png" height="50" alt="">
                </div><!--end col-->
                <div class="col-lg-2 col-md-4 col-6 mt-4 pt-2 text-center">
                    <img src="${pageContext.request.contextPath}/asset/images/clients/1.png" height="50" alt="">
                </div><!--end col-->
                <div class="col-lg-2 col-md-4 col-6 mt-4 pt-2 text-center">
                    <img src="${pageContext.request.contextPath}/asset/images/clients/2.png" height="50" alt="">
                </div><!--end col-->
            </div>
        </div>
    </section>
    <!-- ABOUT CLIENTS END -->
    
    <jsp:include page="./include/footer.jsp"></jsp:include>
    <!-- javascript -->
    <script src="${pageContext.request.contextPath}/asset/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/asset/js/bootstrap.bundle.min.js"></script>
    <script src="${pageContext.request.contextPath}/asset/js/jquery.easing.min.js"></script>
    <script src="${pageContext.request.contextPath}/asset/js/plugins.js"></script>

    <!-- selectize js -->
    <script src="${pageContext.request.contextPath}/asset/js/selectize.min.js"></script>
    <script src="${pageContext.request.contextPath}/asset/js/jquery.nice-select.min.js"></script>

    <script src="${pageContext.request.contextPath}/asset/js/owl.carousel.min.js"></script>
    <script src="${pageContext.request.contextPath}/asset/js/counter.int.js"></script>

    <script src="${pageContext.request.contextPath}/asset/js/app.js"></script>
    <script src="${pageContext.request.contextPath}/asset/js/home.js"></script>
</body>
</html>