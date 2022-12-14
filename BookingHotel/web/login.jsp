<%@ page pageEncoding="UTF-8" %>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="utf-8">
        <title>TR? C?A HI?U | M?u Du l?ch & Du l?ch ?áp ?ng</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="" name="keywords">
        <meta content="" name="description">

        <!-- Favicons -->
        <link href="img/favicon.ico" rel="icon">
        <link href="img/apple-favicon.png" rel="apple-touch-icon">

        <!-- Google Fonts -->
        <link href="https://fonts.googleapis.com/css?family=Montserrat:100,200,300,400,500,600,700,800,900" rel="stylesheet"> 

        <!-- Vendor CSS File -->
        <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
        <link href="vendor/font-awesome/css/font-awesome.min.css" rel="stylesheet">
        <link href="vendor/slick/slick.css" rel="stylesheet">
        <link href="vendor/slick/slick-theme.css" rel="stylesheet">
        <link href="vendor/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Main Stylesheet File -->
        <link href="css/hover-style1.css" rel="stylesheet">
        <link href="css/style1.css" rel="stylesheet">
    </head>

    <body>
        <!-- Header Section Start -->
        <header id="header">
            <a href="index.html" class="logo"><img src="img/logo.jpg" alt="logo"></a>
            <div class="phone"><i class="fa fa-phone"></i>+1 234 567 8900</div>
            <div class="mobile-menu-btn"><i class="fa fa-bars"></i></div>
            <nav class="main-menu top-menu">
                <ul>
                    <li><a href="home">Trang chủ</a></li>
                    <li><a href="about.html">Về chúng tôi</a></li>
                    <li><a href="booking">Phòng</a></li>
                    <li><a href="amenities.html">Tiện Nghi</a></li>
                    <li class="active"><a href="login.jsp">Đăng nhập</a></li>
                    <li><a href="contact.html">Liên hệ</a></li>
                </ul>
            </nav>
        </header>
        <!-- Header Section End -->

        <!-- Login Section Start -->
        <div id="login">
            <div class="container">
                <div class="section-header">
                    <h2>Registration / Login</h2>
                    <p>
                        Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas in mi libero. Quisque convallis, enim at venenatis tincidunt.
                    </p>
                </div>
                <div class="row">
                    <div class="col-md-6">
                        <div class="login-form">
                            <form action="register" method="post">
                                <div class="form-row">
                                    <div class="control-group col-sm-6">
                                        <label>Email</label>
                                        <input type="email" class="form-control" required="required" name="username"/>
                                    </div>
                                    <div class="control-group col-sm-6">
                                        <label>Mật khẩu</label>
                                        <input type="password" class="form-control" required="required" name="password"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="control-group col-sm-6">
                                        <label>Nhập lại mật khẩu</label>
                                        <input type="password" class="form-control" required="required" />
                                    </div>
                                    <div class="control-group col-sm-6">
                                        <label>Số điên thoại</label>
                                        <input type="text" class="form-control" required="required" name="phone"/>
                                    </div>
                                </div>
                                <div class="form-row">
                                    <div class="control-group col-sm-6">
                                        <label>Cmnd</label>
                                        <input type="text" class="form-control" required="required" name="identityCard"/>
                                    </div>
                                </div>
                                 <span style="color: red">${errorRegis}</span>
                                 <span style="color: greenyellow">${mess}</span>
                                <div class="button"><button type="submit">Registration</button></div>
                            </form>
                        </div>
                    </div>

                    <div class="col-md-6">
                        <div class="login-form">
                            <form  action="login" method="post">
                                <div class="form-row">
                                    <div class="control-group col-sm-6">
                                        <label>Email</label>
                                        <input type="email" class="form-control" required="required" name="username"/>
                                    </div>
                                    <div class="control-group col-sm-6">
                                        <label>Mật khẩu</label>
                                        <input type="password" class="form-control" required="required" name="password"/>
                                    </div>
                                </div>
                                <span style="color: red">${error}</span>
                                <div class="button"><button type="submit">Login</button></div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Login Section End -->

        <!-- Footer Section Start -->
        <div id="footer">
            <div class="container">
                <div class="row">
                    <div class="col-12">
                        <div class="social">
                            <a href=""><li class="fa fa-instagram"></li></a>
                            <a href=""><li class="fa fa-twitter"></li></a>
                            <a href=""><li class="fa fa-facebook-f"></li></a>
                        </div>
                    </div>
                    <div class="col-12">
                        <p>S? ?i?n tho?i: <a href="">0966894166</a> luôn luôn nghe máy</p>

                        <!--/*** This template is free as long as you keep the footer author?s credit link/attribution link/backlink. If you'd like to use the template without the footer author?s credit link/attribution link/backlink, you can purchase the Credit Removal License Giá t? "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        <p>??a ch? <a href="https://htmlcodex.com">S? 1 âm ph?</a></p>
                    </div>
                </div>
            </div>
        </div>
        <!-- Footer Section End -->

        <a href="#" class="back-to-top"><i class="fa fa-chevron-up"></i></a>

        <!-- Vendor JavaScript File -->
        <script src="vendor/jquery/jquery.min.js"></script>
        <script src="vendor/jquery/jquery-migrate.min.js"></script>
        <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
        <script src="vendor/easing/easing.min.js"></script>
        <script src="vendor/stickyjs/sticky.js"></script>
        <script src="vendor/superfish/hoverIntent.js"></script>
        <script src="vendor/superfish/superfish.min.js"></script>
        <script src="vendor/wow/wow.min.js"></script>
        <script src="vendor/slick/slick.min.js"></script>
        <script src="vendor/tempusdominus/js/moment.min.js"></script>
        <script src="vendor/tempusdominus/js/moment-timezone.min.js"></script>
        <script src="vendor/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script>

        <!-- Contact Javascript File -->
        <script src="js/jqBootstrapValidation.min.js"></script>
        <script src="js/contact.js"></script>

        <!-- Main Javascript File -->
        <script src="js/main.js"></script>
    </body>
</html>
