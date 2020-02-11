<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no">
    <meta name="description" content="Mobileshop HTML mobile template by Maxartkiller. Bootstrap UI UX, Bootstrap theme, Bootstrap HTML, Bootstrap template, Bootstrap mobile app, multipurpose mobile app template. get bootstrap template, mobile app">
    <meta name="author" content="Maxartkiller">
    <link rel=icon href="${pageContext.request.contextPath}/HTML/assets/img/logo-small.png" sizes="any">

    <title>Mobileshop</title>

    <!-- material icons stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/vendor/materializeicon/material-icons.css" rel="stylesheet">

    <!-- bootstrap stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- swiper stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- template stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/css/style-red.css" rel="stylesheet" id="style">

	<!-- Template js files -->
    <script src="${pageContext.request.contextPath}/HTML/assets/js/jquery-3.3.1.min.js"></script>
    <script src="${pageContext.request.contextPath}/HTML/assets/js/popper.min.js"></script>
    <script src="${pageContext.request.contextPath}/HTML/assets/vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

    <!-- Swiper javascript -->
    <script src="${pageContext.request.contextPath}/HTML/assets/vendor/swiper/js/swiper.min.js"></script>

    <!-- Custom javascript -->
    <script src="${pageContext.request.contextPath}/HTML/assets/js/main.js"></script>
    
    <!-- Cookie for color scheme -->
    <script src="${pageContext.request.contextPath}/HTML/assets/vendor/cookie/jquery.cookie.js"></script>
    
    <!-- Color scheme js -->
    <script src="${pageContext.request.contextPath}/HTML/assets/js/color-scheme-demo.js"></script>

    <!-- App js page level initialization functions -->
    <script src="${pageContext.request.contextPath}/HTML/assets/js/app.js"></script>
    <decorator:head/>
</head>

<body class="ui-rounded sidebar-fill header-fill">
   
    <div class="background reveal-background">
        <img src="${pageContext.request.contextPath}/HTML/assets/img/image7.jpg" alt="">
    </div>
    
    <div class="sidebar sidebar-left overlay-sidebar">
        <div class="content">
            <figure class="avatar avatar-100 rounded-circle has-background mx-auto username d-block">
                <div class="background">
                    <img src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg" alt="">
                </div>
            </figure>
            <h5 class="text-center mb-0 username-text">Maxartkiller</h5>
            <p class="text-center small text-mute username-text">New York, United States</p>

            <div class="list-group list-group-flush nav-list">
                <a href="index.jsp" class="list-group-item list-group-item-action active"><i class="material-icons">store</i> <span class="text-link">Home</span></a>
                <a href="myorders.jsp" class="list-group-item list-group-item-action"><i class="material-icons">view_carousel</i> <span class="text-link">My Orders</span></a>
                <a href="notifications.jsp" class="list-group-item list-group-item-action"><i class="material-icons">notifications</i> <span class="text-link">Notifications</span></a>
                <a href="settings.jsp" class="list-group-item list-group-item-action"><i class="material-icons">memory</i> <span class="text-link">Settings</span></a>
                <a href="offers.jsp" class="list-group-item list-group-item-action"><i class="material-icons">local_offer</i> <span class="text-link">offers</span></a>
                </div>
                <a href="signin.jsp" class="list-group-item text-danger"><i class="material-icons">exit_to_app</i> <span class="text-link">Logout</span></a>
            </div>
        </div> 
    <div class="main-container">
        <header class="header">
            <div class="row no-gutters">
                <div class="col-auto">
                    <button id="backButton" class="btn btn-link menu-btn-left"><i class="material-icons" id="backbtnText">menu</i></button>
                </div>
                <div class="col">
                    <div class="logo-header">
                        <img src="${pageContext.request.contextPath}/HTML/assets/img/logo-small.svg" alt="" class="logo-img">
                        <h5 class="logo-header-text"><span class="text-uppercase">dresslook</span><br><small>looking every wear</small></h5>
                    </div>
                </div>
                <div class="col-auto">
                    <a href="favorite.jsp" class="btn btn-link"><i class="material-icons">favorite_border</i></a>
                    <a href="notifications.jsp" class="btn btn-link">
                        <i class="material-icons">notifications_none</i>
                        <span class="notification-point"></span>
                    </a>
                </div>
            </div>
        </header>
        <div class="content container-fluid">
            <!-- page content start -->
			<decorator:body/>
            <!-- page content ends -->
        </div>
		 <footer class="tabs-footer">
            <ul class="nav nav-tabs justify-content-center" id="maintab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" data-toggle="tab" href="#home" role="tab" aria-controls="home" aria-selected="true">
                        <i class="material-icons">store</i>
                        <small class="sr-only">Store</small>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="search-tab" data-toggle="tab" href="#search" role="tab" aria-controls="search" aria-selected="false">
                        <i class="material-icons">find_in_page</i>
                        <small class="sr-only">Search</small>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="cart-tab" data-toggle="tab" href="#cart" role="tab" aria-controls="cart" aria-selected="false">
                        <i class="material-icons">local_mall</i>
                        <span class="notification-point"></span>
                        <small class="sr-only">Local Mall</small>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="favorite-tab" data-toggle="tab" href="#favorite" role="tab" aria-controls="favorite" aria-selected="false">
                        <i class="material-icons">bookmark</i>
                        <small class="sr-only">Bookmarks</small>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" data-toggle="tab" href="#profile" role="tab" aria-controls="profile" aria-selected="false">
                        <i class="material-icons">account_circle</i>
                        <small class="sr-only">Account</small>
                    </a>
                </li>
            </ul>
        </footer>
    </div>
    <!-- MainContainer End -->
</body>

</html>
