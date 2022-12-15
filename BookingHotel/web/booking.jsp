<%-- 
    Document   : booking
    Created on : Dec 13, 2022, 4:01:57 PM
    Author     : thang
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page import = "javax.servlet.http.*,javax.servlet.*" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/sql" prefix = "sql"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
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
                    <li class="active"><a href="booking">Phòng</a></li>
                    <li><a href="amenities.html">Tiện Nghi</a></li>
                    <li><a href="login.jsp">Đăng nhập</a></li>
                    <li><a href="contact.html">Liên hệ</a></li>
                </ul>
            </nav>
        </header>
        <!-- Header Section End -->

        <!-- Search Section Start -->
        <div id="search" style="background: #f2f2f2;">
            <div class="container">
                <form class="form-row" action="search-room" >
                    <div class="control-group col-md-3">
                        <label>Check-In</label>
                        <div class="form-group">
                            <div class="input-group date" id="date-3" data-target-input="nearest">
                                <input name="dateStart" type="text" class="form-control datetimepicker-input" data-target="#date-3"/>
                                <div class="input-group-append" data-target="#date-3" data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group col-md-3">
                        <label>Check-Out</label>
                        <div class="form-group">
                            <div class="input-group date" id="date-4" data-target-input="nearest">
                                <input name="dateEnd" type="text" class="form-control datetimepicker-input" data-target="#date-4"/>
                                <div class="input-group-append" data-target="#date-4" data-toggle="datetimepicker">
                                    <div class="input-group-text"><i class="fa fa-calendar"></i></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="control-group col-md-3">
                        <button class="btn btn-block">Search</button>
                        <a class="btn btn-block" href="sortByPrice">Sort by price</a>
                    </div>
                </form>
            </div>
        </div>
        <!-- Search Section End -->

        <!-- Room Section Start -->
        <div id="rooms">
            <div class="container">
                <div class="section-header">
                    <h2>Phòng của chúng tôi</h2>
                    <p>
                        Luôn luôn sẵn sàng phục vụ những khách hàng khó tính nhất
                    </p>
                </div>
                <c:forEach items="${listRoom}" var="item">
                    <div class="row">
                        <div class="col-md-12">
                            <div class="row">
                                <div class="col-md-3">
                                    <div class="room-img">
                                        <div class="box12">
                                            <img src="${item.image}">
                                            <div class="box-content">
                                                <h3 class="title">${item.bed} giường </h3>
                                                <ul class="icon">
                                                    <li><a href="#" data-toggle="modal" data-target="#modal-id"><i class="fa fa-link"></i></a></li>
                                                </ul>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-md-6">
                                    <div class="room-des">
                                        <h3><a href="#" data-toggle="modal" data-target="#modal-id">Một giường thường</a></h3>
                                        <p>nhấn vào ảnh để xem thông tin phòng !!!</p>
                                        <ul class="room-size">
                                            <li><i class="fa fa-arrow-right"></i>Size: ${item.area}sq ft </li>
                                            <li><i class="fa fa-arrow-right"></i>Beds: ${item.bed}</li>
                                        </ul>
                                        <ul class="room-icon">
                                            <li class="icon-1"></li>
                                            <li class="icon-2"></li>
                                            <li class="icon-3"></li>
                                            <li class="icon-4"></li>
                                            <li class="icon-5"></li>
                                            <li class="icon-6"></li>
                                            <li class="icon-7"></li>
                                            <li class="icon-8"></li>
                                            <li class="icon-9"></li>
                                            <li class="icon-10"></li>
                                        </ul>
                                    </div>
                                </div>
                                <div class="col-md-3">
                                    <div class="room-rate">
                                        <h3>Giá từ</h3>
                                        <h1>$ ${item.price}</h1>
                                        <input class="referRoomID" type="hidden" value="${item.roomId}">
                                        <input class="referPrice" type="hidden" value="${item.price}">
                                        <a style="text-decoration: none" href="#" class="click-booking">Đặt phòng ngay</a>
                                    </div>
                                </div>
                            </div>
                            <hr>
                        </div>
                    </div>
                </c:forEach>
            </div>
        </div>
        <!-- Room Section End -->

        <!-- Modal for Room Section Start -->
        <div id="modal-id" class="modal fade" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">&times;</button>
                    </div>
                    <div class="modal-body">
                        <div class="row">
                            <div class="col-12">
                                <div class="port-slider">
                                    <div><img src="img/room-slider/room-1.jpg"></div>
                                    <div><img src="img/room-slider/room-2.jpg"></div>
                                    <div><img src="img/room-slider/room-3.jpg"></div>
                                    <div><img src="img/room-slider/room-4.jpg"></div>
                                    <div><img src="img/room-slider/room-5.jpg"></div>
                                    <div><img src="img/room-slider/room-6.jpg"></div>
                                </div>
                                <div class="port-slider-nav">
                                    <div><img src="img/room-slider/room-1.jpg"></div>
                                    <div><img src="img/room-slider/room-2.jpg"></div>
                                    <div><img src="img/room-slider/room-3.jpg"></div>
                                    <div><img src="img/room-slider/room-4.jpg"></div>
                                    <div><img src="img/room-slider/room-5.jpg"></div>
                                    <div><img src="img/room-slider/room-6.jpg"></div>
                                </div>
                            </div>
                            <form class="col-12" action="booking" method="post">
                                <h2>chọn thời gian ở</h2>
                                <div>
                                    <input type="text" name="daterange" /> 
                                    <input type="text" name="roomID"/>
                                    <span id="price"></span>
                                </div><br><br>
                                <div class="modal-link">
                                    <button>Book Now</button>
                                </div><br>
                                <div class="modal-link">
                                    <a href="#" id="cancel-model">cancel</a>
                                </div>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </div>
        <!-- Modal for Room Section End -->

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
                        <p>Số điện thoại: <a href="">0966894166</a> luôn luôn nghe máy</p>

                        <!--/*** This template is free as long as you keep the footer author’s credit link/attribution link/backlink. If you'd like to use the template without the footer author’s credit link/attribution link/backlink, you can purchase the Credit Removal License Giá từ "https://htmlcodex.com/credit-removal". Thank you for your support. ***/-->
                        <p>Địa chỉ <a href="https://htmlcodex.com">Số 1 âm phủ</a></p>
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

        <!-- Booking Javascript File -->
        <script src="js/booking.js"></script>
        <script src="js/jqBootstrapValidation.min.js"></script>

        <!-- Main Javascript File -->
        <script src="js/main.js"></script>
        <sql:setDataSource var = "snapshot" driver = "com.microsoft.sqlserver.jdbc.SQLServerDriver"
                           url = "jdbc:sqlserver://localhost:1433;databaseName=Booking_Hotel"
                           user = "sa"  password = "123"/>

        <script type="text/javascript" src="//cdn.jsdelivr.net/jquery/1/jquery.min.js"></script>
        <script type="text/javascript" src="//cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap/3/css/bootstrap.css" />

        <!-- Include Date Range Picker -->
        <script type="text/javascript" src="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.js"></script>
        <link rel="stylesheet" type="text/css" href="//cdn.jsdelivr.net/bootstrap.daterangepicker/2/daterangepicker.css" />
        <script>
                                            var rs = [];
            <sql:query dataSource = "${snapshot}" var="result">
                                            select * from booking where roomID = 1;
            </sql:query>
                                            let item = [];
            <c:forEach var = "row" items = "${result.rows}">
                                            item = [];
                                            item.push('${row.dateStart}');
                                            item.push('${row.dateEnd}');
                                            rs.push(item);
            </c:forEach>
                                            console.log(rs);
                                            let dateStart;
                                            let dateEnd;
                                            $(function () {
                                                var sub_dates = create_sub_date(rs);
                                                console.log(sub_dates);
                                                var sub_dates_date = sub_dates.map(function (b) {
                                                    return +(new Date(b));
                                                });
                                                $('input[name="daterange"]').daterangepicker({
                                                    isInvalidDate: function (a) {
                                                        return sub_dates_date.indexOf(+(new Date(a))) > 0;
                                                    }
                                                });
                                            });
                                            function create_sub_date(arrDate) {
                                                let newArrDate = [];
                                                let datestring;
                                                arrDate.map(function (tmp) {
                                                    dateStart = parseDate(tmp[0]);
                                                    dateEnd = parseDate(tmp[1]);
                                                    let diff = datediff(dateStart, dateEnd);
                                                    for (let i = 0; i <= diff; i++) {
                                                        datestring = (dateStart.getMonth() + 1) + "/" + dateStart.getDate() + "/" + dateStart.getFullYear();
                                                        newArrDate.push(datestring);
                                                        dateStart.setDate(dateStart.getDate() + 1);
                                                    }
                                                });
                                                return newArrDate;
                                            }


                                            function datediff(first, second) {
                                                return Math.round((second - first) / (1000 * 60 * 60 * 24));
                                            }
                                            function parseDate(str) {
                                                var mdy = str.split('-');
                                                return new Date(mdy[0], mdy[1] - 1, mdy[2]);
                                            }
                                            $('.click-booking').click(function (e) {
                                                e.preventDefault();
                                                $('.modal').css("display", "block");
                                                $('.fade').css("opacity", "1");
                                                let roomID = e.target.parentElement.querySelector(".referRoomID").value;
                                                let price = e.target.parentElement.querySelector(".referPrice").value;
                                                $('input[name="daterange"]').val();
                                                $('input[name="roomID"]').val(roomID);
                                                
                                                console.log($('input[name="daterange"]').val(),$('input[name="roomID"]').val());
                                            });
                                            $('#cancel-model').click(function (e) {
                                                e.preventDefault();
                                                $('.modal').css("display", "none");
                                                $('.fade').css("opacity", "0");
                                            });
        </script>
    </body>
</html>