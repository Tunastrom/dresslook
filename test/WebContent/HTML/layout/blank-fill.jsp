<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport"
        content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no">
    <meta name="description"
        content="Mobileshop HTML mobile template by Maxartkiller. Bootstrap UI UX, Bootstrap theme, Bootstrap HTML, Bootstrap template, Bootstrap mobile app, multipurpose mobile app template. get bootstrap template, mobile app">
    <meta name="author" content="Maxartkiller">
    <link rel=icon href="${pageContext.request.contextPath}/HTML/assets/img/logo-small.svg" sizes="any">

    <title>dresslook</title>

    <!-- material icons stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/vendor/materializeicon/material-icons.css"
        rel="stylesheet">


<!-- bootstrap stylesheet -->
<link
	href="${pageContext.request.contextPath}/HTML/assets/vendor/bootstrap-4.4.1/css/bootstrap.min.css?ver=4"
	rel="stylesheet">
    <!-- swiper stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/vendor/swiper/css/swiper.min.css?ver=2" rel="stylesheet">
    <!-- template stylesheet -->
    <link href="${pageContext.request.contextPath}/HTML/assets/css/style-red.css?ver=5" rel="stylesheet" id="style">
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
    <script src="${pageContext.request.contextPath}/HTML/assets/js/app.js?ver=1"></script>
    <style>
        .page-title {
            font-weight: bold;
            color: rgba(255, 74, 74, 0.9);
            margin: 0px;
            padding-top: 4px;
        }

        .buttons {
            color: white;
            font-weight: bold;
        }

        .btn btn-warning btn-40 ml-2 text-white {
            background-color: #f94620;
        }
    </style>
    <decorator:head />

</head>

<body class="ui-rounded sidebar-fill header-fill" data-page="homepage">
    <div class="sidebar sidebar-left overlay-sidebar">
        <div class="content">
            <c:choose>
                <c:when test="${id !=null && sid==null}">
                    <h5 class="text-center mb-0 username-text">${id}</h5>
                    <p class="text-center small text-mute username-text">환영합니다</p>
                </c:when>
                <c:when test="${sid !=null && id==null}">
                    <h5 class="text-center mb-0 username-text">${sid}</h5>
                    <p class="text-center small text-mute username-text">환영합니다</p>
                </c:when>
                <c:otherwise>
                    <h5 class="text-center mb-0 username-text">안녕하세요</h5>
                    <p class="text-center small text-mute username-text">환영합니다</p>
                </c:otherwise>
            </c:choose>

            <div class="list-group list-group-flush nav-list">
                <c:if test="${id !=null && sid==null}">

                <a href="/test/timelineCommand.do" class="list-group-item list-group-item-action active"><i class="material-icons">store</i> <span class="text-link">Home</span></a>
                <a href="/test/myOrderList.do" class="list-group-item list-group-item-action"><i class="material-icons">view_carousel</i> <span class="text-link">My Orders</span></a>
                <a href="/test/notifications.do" class="list-group-item list-group-item-action"><i class="material-icons">notifications</i> <span class="text-link">Notifications</span></a>
                <c:if test="${au == '211' }">
                <a href="/test/memberTranslate.do" class="list-group-item list-group-item-action"><i class="material-icons">memory</i> <span class="text-link">회원정보관리</span></a>
                <a href="/test/mGoodsList.do" class="list-group-item list-group-item-action"><i class="material-icons">memory</i> <span class="text-link">상품정보관리</span></a>
                </c:if>

                <a href="/test/myProfile.do" class="list-group-item list-group-item-action"><i class="material-icons">local_offer</i> <span class="text-link">offers</span></a>
           		</c:if>
           		<c:if test="${sid !=null && id==null }">
                <a href="/test/timelineCommand.do" class="list-group-item list-group-item-action active"><i class="material-icons">store</i> <span class="text-link">Home</span></a>
                <a href="/test/goodsList.do" class="list-group-item list-group-item-action"><i class="material-icons">view_carousel</i> <span class="text-link">상품정보</span></a>
                <a href="/test/notifications.do" class="list-group-item list-group-item-action"><i class="material-icons">notifications</i> <span class="text-link">주문정보</span></a>
                <a href="/test/sellerMain.do" class="list-group-item list-group-item-action"><i class="material-icons">local_offer</i> <span class="text-link">offers</span></a>
           		</c:if>
            </div>
			
            <c:choose>
                <c:when test="${id !=null && sid==null}">
                    <a href="logout.do" class="list-group-item text-danger"><i class="material-icons">exit_to_app</i>
                        <span class="text-link">로그아웃</span></a>
                </c:when>
                <c:when test="${sid !=null && id==null}">
                    <a href="Slogout.do" class="list-group-item text-danger"><i class="material-icons">exit_to_app</i>
                        <span class="text-link">로그아웃</span></a>
                </c:when>
                <c:otherwise>
                    <a href="loginSelect.do" class="list-group-item text-danger"><i
                            class="material-icons">exit_to_app</i> <span class="text-link">로그인</span></a>
                    <a href="memberSelect.do" class="list-group-item text-danger"><i
                            class="material-icons">exit_to_app</i> <span class="text-link">회원가입</span></a>
                </c:otherwise>
            </c:choose>
        </div>
    </div>

    <!-- main-container start -->
    <div class="main-container">
        <header class="header">
            <div class="row no-gutters">
                <div class="col-auto">
                    <button id="backButton" class="btn btn-link menu-btn-left"><i class="material-icons"
                            id="backbtnText">menu</i></button>
                </div>
                <div class="col">
                    <div class="logo-header">
                        <img alt="" class="logo-img">
                        <h5 class="logo-header-text"><span class="text-uppercase">dresslook</span><br><small>LOOKing
                                every wear</small></h5>
                    </div>
                </div>
                <div class="col-auto">
                    <a href="like.do" class="btn btn-link"><i class="material-icons">favorite_border</i></a>
                    <a href="notifications.do" class="btn btn-link">
                        <i class="material-icons">notifications_none</i>
                        <span class="notification-point"></span>
                    </a>
                </div>
            </div>
        </header>
        <div id="ContentsArea" class="content container-fluid">
            <!-- page content start -->
            <decorator:body />
            <!-- page content ends -->
        </div>
        <footer class="tabs-footer">
            <ul class="nav nav-tabs justify-content-center" id="maintab" role="tablist">
                <li class="nav-item">
                    <a class="nav-link active" id="home-tab" href="timelineCommand.do">
                        <i class="material-icons">store</i>
                        <small class="sr-only">Store</small>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="search-tab" href="searchCommand.do" aria-controls="search"
                        aria-selected="true">
                        <i class="material-icons">find_in_page</i>
                        <small class="sr-only">Search</small>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="cart-tab" href="dressRoomCommand.do?pass=1" aria-controls="cart"
                        aria-selected="true">
                        <i class="material-icons">local_mall</i>
                        <span class="notification-point"></span>
                        <small class="sr-only">Local Mall</small>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="favorite-tab" href="collectionMainCommand.do" aria-controls="favorite"
                        aria-selected="false">
                        <i class="material-icons">bookmark</i>
                        <small class="sr-only">Bookmarks</small>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" id="profile-tab" href="#profile" aria-controls="profile" aria-selected="false">
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