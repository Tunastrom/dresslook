<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no, shrink-to-fit=no">
    <meta name="description" content="Mobileshop HTML mobile template by Maxartkiller. Bootstrap UI UX, Bootstrap theme, Bootstrap HTML, Bootstrap template, Bootstrap mobile app, multipurpose mobile app template. get bootstrap template, mobile app">
    <meta name="author" content="Maxartkiller">
    <link rel=icon href="../assets/img/logo-small.png" sizes="any">

    <title>Mobileshop</title>

    <!-- material icons stylesheet -->
    <link href="../assets/vendor/materializeicon/material-icons.css" rel="stylesheet">

    <!-- bootstrap stylesheet -->
    <link href="../assets/vendor/bootstrap-4.4.1/css/bootstrap.min.css" rel="stylesheet">

    <!-- swiper stylesheet -->
    <link href="../assets/vendor/swiper/css/swiper.min.css" rel="stylesheet">

    <!-- template stylesheet -->
    <link href="../assets/css/style-dark-blue.css" rel="stylesheet" id="style">

</head>

<body class="ui-rounded sidebar-fill header-fill" data-page="homepage">
    <div class="container-fluid h-100 pageloader">
        <div class="row h-100">
            <div class="col-12 align-self-center">
                <figure class=" logo-landing mb-4 mx-auto">
                    <img src="../assets/img/logo.svg" alt="">
                </figure>
                <h2 class="text-uppercase font-weight-medium text-white">Mobileshop</h2>
                <p class="text-white text-mute">Mobile HTML template</p>
                <br>
                <div class="spinner-border text-light" role="status">
                    <span class="sr-only">Loading...</span>
                </div>
            </div>
        </div>
    </div>

    <div class="background reveal-background">
        <img src="../assets/img/image7.jpg" alt="">
    </div>

    <!-- sidebar left -->
    <div class="sidebar sidebar-left overlay-sidebar">
        <div class="content">
            <figure class="avatar avatar-100 rounded-circle has-background mx-auto username d-block">
                <div class="background">
                    <img src="../assets/img/image4.jpg" alt="">
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
                <div class="list-group-item multilevel">
                    <a class="multilevel-link"><i class="material-icons">featured_play_list</i> <span class="text-link">Sidebar</span> <i class="material-icons float-right last">chevron_right</i></a>
                    <div class="list-group list-group-flush multilevel-dropdown">
                        <a class="list-group-item list-group-item-action active" id="overlay"><i class="icon icon-30">O</i> <span class="text-link">Overlay</span></a>
                        <a class="list-group-item list-group-item-action" id="reveal"><i class="icon icon-30">R</i> <span class="text-link">Reveal</span></a>
                        <a class="list-group-item list-group-item-action" id="iconic"><i class="icon icon-30">I</i> <span class="text-link">Iconic</span></a>
                        <a class="list-group-item list-group-item-action" id="modal" data-target="#menumodal" data-toggle="modal"><i class="icon icon-30">M</i> <span class="text-link">Modal</span></a>
                    </div>
                </div>
                <a href="signin.jsp" class="list-group-item text-danger"><i class="material-icons">exit_to_app</i> <span class="text-link">Logout</span></a>
            </div>
        </div>

    </div>
    <!-- sidebar left -->

    <!-- main container -->
    <div class="main-container">
        <header class="header">
            <div class="row no-gutters">
                <div class="col-auto">
                    <button class="btn btn-link menu-btn-left"><i class="material-icons">menu</i></button>
                </div>
                <div class="col">
                    <div class="logo-header">
                        <img src="../assets/img/logo-small.svg" alt="" class="logo-img">
                        <h5 class="logo-header-text"><span class="text-uppercase">Mobileshop</span><br><small>Mobile HTML template</small></h5>
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

            <div class="tab-content" id="maintabContent">
                <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                    <div class="row">
                        <div class="container px-0">
                            <!-- Swiper -->
                            <div class="swiper-container offerslidetab1 my-3">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-default">
                                            <div class="background opacity-30">
                                                <img src="../assets/img/image8.jpg" alt="">
                                            </div>
                                            <div class="card-body">
                                                <h3 class="font-weight-normal">50% off<br>Winter Collection</h3>
                                                <p class="text-mute">Best product and collections</p>
                                                <div class="text-right">
                                                    <a href="" class="btn btn-sm btn-white text-uppercase">Show Now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-primary text-white">
                                            <div class="background opacity-30">
                                                <img src="../assets/img/image9.jpg" alt="">
                                            </div>
                                            <div class="card-body">
                                                <h3 class="font-weight-normal">10% Instant<br>on Credit Cards</h3>
                                                <p class="text-mute">Best product and collections</p>
                                                <div class="text-right">
                                                    <a href="" class="btn btn-sm btn-white text-uppercase">Show Now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-default text-white">
                                            <div class="background opacity-30">
                                                <img src="../assets/img/image8.jpg" alt="">
                                            </div>
                                            <div class="card-body">
                                                <h3 class="font-weight-normal">40% Flat<br>Off on Addidaas </h3>
                                                <p class="text-mute">Best product and collections</p>
                                                <div class="text-right">
                                                    <a href="" class="btn btn-sm btn-white text-uppercase">Show Now</a>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Add Pagination -->
                                <div class="swiper-pagination white-pagination text-left mb-3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container px-0">
                            <!-- Swiper -->
                            <div class="swiper-container categoriestab1 text-center">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image4.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Men</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image7.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Women</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image1.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Kids</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image9.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Offer Sale</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image8.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Acceso.</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image4.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Men</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image7.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Women</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image1.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Kids</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image9.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Offer Sale</p>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="avatar avatar-80 has-background mb-2 rounded">
                                            <div class="background">
                                                <img src="../assets/img/image8.jpg" alt="">
                                            </div>
                                        </div>
                                        <p class="text-uppercase small">Acceso.</p>
                                    </div>
                                </div>
                                <!-- Add Pagination -->
                                <div class="swiper-pagination white-pagination text-left mb-3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container-fluid bg-purple-light">
                            <div class="row no-gutters">
                                <div class="col-7 py-4">
                                    <h3 class="font-weight-normal">Wear Smart Seasons</h3>
                                    <p class="text-mute">Adi, Rebo, Lees and more</p>
                                    <a href="" class="btn btn-sm btn-default text-uppercase">Show Now</a>
                                </div>
                                <div class="col-5 align-self-end text-center">
                                    <img src="../assets/img/offerimage1.png" alt="" class="mw-100">
                                </div>
                            </div>
                        </div>
                    </div>                    
                    <div class="row my-3">
                        <div class="container px-0">
                            <!-- Swiper -->
                            <div class="swiper-container offerslide2tab1 text-center">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-default">
                                            <div class="background opacity-40">
                                                <img src="../assets/img/image6.jpg" alt="">
                                            </div>
                                            <div class="card-body py-5">
                                                <h3 class="font-weight-normal">Woman's<br>Collections</h3>
                                                <p class="text-mute">Upto 70% off</p>
                                                <a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show Now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-primary text-white">
                                            <div class="background opacity-40">
                                                <img src="../assets/img/image4.jpg" alt="">
                                            </div>
                                            <div class="card-body py-5">
                                                <h3 class="font-weight-normal">Men's<br>Collections</h3>
                                                <p class="text-mute">Upto 70% off</p>
                                                <a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show Now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-default text-white">
                                            <div class="background opacity-40">
                                                <img src="../assets/img/image1.jpg" alt="">
                                            </div>
                                            <div class="card-body py-5">
                                                <h3 class="font-weight-normal">Kid's<br>Collections </h3>
                                                <p class="text-mute">Upto 70% off</p>
                                                <a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Add Pagination -->
                                <div class="swiper-pagination white-pagination text-left mb-3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container bg-default-light py-3">
                            <!-- Swiper -->
                            <div class="swiper-container categories2tab1 text-center">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white active">Everything</button>
                                    </div>
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white">Bottom Wear</button>
                                    </div>
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white">Top Wear</button>
                                    </div>
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white">Trouser</button>
                                    </div>
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white">Shoes</button>
                                    </div>
                                </div>
                                <!-- Add Pagination -->
                                <div class="swiper-pagination white-pagination text-left mb-3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container">
                            <div class="row">
                                <div class="col-6 col-md-4 col-lg-3">
                                    <div class="card border-0 mb-4">
                                        <div class="card-body p-0">
                                            <div class="h-150px has-background rounded mb-2">
                                                <div class="top-right m-2">
                                                    <button class="btn btn-sm btn-white btn-rounded"><i class="material-icons">favorite_border</i></button>
                                                </div>
                                                <div class="bottom-left m-2">
                                                    <button class="btn btn-sm btn-white">New</button>
                                                </div>
                                                <a href="product.jsp" class="background">
                                                    <img src="../assets/img/image4.jpg" alt="">
                                                </a>
                                            </div>
                                            <small class="text-mute">Rockstar</small>
                                            <a href="product.jsp">
                                                <p class="mb-0">Men Jacket brown</p>
                                            </a>
                                            <p class="small">$ 39.99</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4 col-lg-3">
                                    <div class="card border-0 mb-4">
                                        <div class="card-body p-0">
                                            <div class="h-150px has-background rounded mb-2">
                                                <div class="top-right m-2">
                                                    <button class="btn btn-sm btn-white btn-rounded text-danger"><i class="material-icons ">favorite</i></button>
                                                </div>
                                                <div class="bottom-left m-2">
                                                    <button class="btn btn-sm btn-white">New</button>
                                                </div>
                                                <figure class="background">
                                                    <img src="../assets/img/image2.jpg" alt="">
                                                </figure>
                                            </div>
                                            <small class="text-mute">Adididas</small>
                                            <p class="mb-0">Women Jacket Black</p>
                                            <p class="small">$ 49.99</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4 col-lg-3">
                                    <div class="card border-0 mb-4">
                                        <div class="card-body p-0">
                                            <div class="h-150px has-background rounded mb-2">
                                                <div class="top-right m-2">
                                                    <button class="btn btn-sm btn-white btn-rounded text-danger"><i class="material-icons">favorite</i></button>
                                                </div>
                                                <div class="bottom-left m-2">
                                                    <button class="btn btn-sm btn-white">New</button>
                                                </div>
                                                <figure class="background">
                                                    <img src="../assets/img/image5.jpg" alt="">
                                                </figure>
                                            </div>
                                            <small class="text-mute">Rockstar</small>
                                            <p class="mb-0">Shorts unisex</p>
                                            <p class="small">$ 28.99</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4 col-lg-3">
                                    <div class="card border-0 mb-4">
                                        <div class="card-body p-0">
                                            <div class="h-150px has-background rounded mb-2">
                                                <div class="top-right m-2">
                                                    <button class="btn btn-sm btn-white btn-rounded"><i class="material-icons ">favorite_border</i></button>
                                                </div>
                                                <div class="bottom-left m-2">
                                                    <button class="btn btn-sm btn-white">New</button>
                                                </div>
                                                <figure class="background">
                                                    <img src="../assets/img/image6.jpg" alt="">
                                                </figure>
                                            </div>
                                            <small class="text-mute">Mansheri</small>
                                            <p class="mb-0">Women Jacket brown</p>
                                            <p class="small">$ 35.99</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row text-center my-3">
                        <div class="col-6 col-md-4 col-lg-3 mx-auto">
                            <button class="btn btn-sm btn-light btn-block">Show all</button>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container">
                            <div class="card bg-default-light">
                                <div class="card-body p-1">
                                    <div class="media">
                                        <div class="icon icon-50 bg-white text-default mr-2"><i class="material-icons">local_offer</i></div>
                                        <div class="media-inner">
                                            <h5 class="mb-0 font-weight-normal"><b>10%</b> instant discount</h5>
                                            <p><small class="text-mute">on all Credit and Debit cards</small></p>
                                        </div>
                                        <div class="align-self-center ml-auto ">
                                            <div class="btn text-default"><i class="material-icons">arrow_forward</i></div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="search" role="tabpanel" aria-labelledby="search-tab">
                    <div class="row">
                        <div class="container">
                            <div class="form-group float-label position-relative">
                                <div class="bottom-right ">
                                    <a href="" class="btn btn-sm btn-link text-dark btn-rounded text-mute"><i class="material-icons">mic</i></a>
                                    <a href="" class="btn btn-sm btn-link text-dark btn-rounded text-mute"><i class="material-icons">camera_alt</i></a>
                                </div>
                                <input type="text" class="form-control ">
                                <label class="form-control-label">Search</label>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container">
                            <h5 class="page-title">Tending Offers</h5>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container px-0">
                            <!-- Swiper -->
                            <div class="swiper-container offerslide2tab2 text-center">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-default">
                                            <div class="background opacity-40">
                                                <img src="../assets/img/image6.jpg" alt="">
                                            </div>
                                            <div class="card-body py-5">
                                                <h3 class="font-weight-normal">Woman's<br>Collections</h3>
                                                <p class="text-mute">Upto 70% off</p>
                                                <a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show Now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-primary text-white">
                                            <div class="background opacity-40">
                                                <img src="../assets/img/image4.jpg" alt="">
                                            </div>
                                            <div class="card-body py-5">
                                                <h3 class="font-weight-normal">Men's<br>Collections</h3>
                                                <p class="text-mute">Upto 70% off</p>
                                                <a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show Now</a>
                                            </div>
                                        </div>
                                    </div>
                                    <div class="swiper-slide">
                                        <div class="card has-background border-0 bg-default text-white">
                                            <div class="background opacity-40">
                                                <img src="../assets/img/image1.jpg" alt="">
                                            </div>
                                            <div class="card-body py-5">
                                                <h3 class="font-weight-normal">Kid's<br>Collections </h3>
                                                <p class="text-mute">Upto 70% off</p>
                                                <a href="" class="btn btn-sm btn-default text-uppercase mt-3">Show Now</a>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                                <!-- Add Pagination -->
                                <div class="swiper-pagination white-pagination text-left mb-3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <h5 class="page-title">Tending Offers</h5>
                                </div>
                                <div class="col-auto align-self-end">
                                    <button class="btn btn-sm btn-link text-dark btn-rounded text-mute menu-btn-right"><i class="material-icons">tune</i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container bg-default-light py-3">
                            <!-- Swiper -->
                            <div class="swiper-container categories2tab2 text-center">
                                <div class="swiper-wrapper">
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white active">Everything</button>
                                    </div>
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white">Bottom Wear</button>
                                    </div>
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white">Top Wear</button>
                                    </div>
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white">Trouser</button>
                                    </div>
                                    <div class="swiper-slide">
                                        <button class="btn btn-sm btn-white">Shoes</button>
                                    </div>
                                </div>
                                <!-- Add Pagination -->
                                <div class="swiper-pagination white-pagination text-left mb-3"></div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container">
                            <div class="row">
                                <div class="col-6 col-md-4 col-lg-3">
                                    <div class="card border-0 mb-4">
                                        <div class="card-body p-0">
                                            <div class="h-150px has-background rounded mb-2">
                                                <div class="top-right m-2">
                                                    <button class="btn btn-sm btn-white btn-rounded"><i class="material-icons">favorite_border</i></button>
                                                </div>
                                                <div class="bottom-left m-2">
                                                    <button class="btn btn-sm btn-white">New</button>
                                                </div>
                                                <a href="product.jsp" class="background">
                                                    <img src="../assets/img/image4.jpg" alt="">
                                                </a>
                                            </div>
                                            <small class="text-mute">Rockstar</small>
                                            <a href="product.jsp">
                                                <p class="mb-0">Men Jacket brown</p>
                                            </a>
                                            <p class="small">$ 39.99</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4 col-lg-3">
                                    <div class="card border-0 mb-4">
                                        <div class="card-body p-0">
                                            <div class="h-150px has-background rounded mb-2">
                                                <div class="top-right m-2">
                                                    <button class="btn btn-sm btn-white btn-rounded text-danger"><i class="material-icons ">favorite</i></button>
                                                </div>
                                                <div class="bottom-left m-2">
                                                    <button class="btn btn-sm btn-white">New</button>
                                                </div>
                                                <figure class="background">
                                                    <img src="../assets/img/image2.jpg" alt="">
                                                </figure>
                                            </div>
                                            <small class="text-mute">Adididas</small>
                                            <p class="mb-0">Women Jacket Black</p>
                                            <p class="small">$ 49.99</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4 col-lg-3">
                                    <div class="card border-0 mb-4">
                                        <div class="card-body p-0">
                                            <div class="h-150px has-background rounded mb-2">
                                                <div class="top-right m-2">
                                                    <button class="btn btn-sm btn-white btn-rounded text-danger"><i class="material-icons">favorite</i></button>
                                                </div>
                                                <div class="bottom-left m-2">
                                                    <button class="btn btn-sm btn-white">New</button>
                                                </div>
                                                <figure class="background">
                                                    <img src="../assets/img/image5.jpg" alt="">
                                                </figure>
                                            </div>
                                            <small class="text-mute">Rockstar</small>
                                            <p class="mb-0">Shorts unisex</p>
                                            <p class="small">$ 28.99</p>
                                        </div>
                                    </div>
                                </div>
                                <div class="col-6 col-md-4 col-lg-3">
                                    <div class="card border-0 mb-4">
                                        <div class="card-body p-0">
                                            <div class="h-150px has-background rounded mb-2">
                                                <div class="top-right m-2">
                                                    <button class="btn btn-sm btn-white btn-rounded"><i class="material-icons ">favorite_border</i></button>
                                                </div>
                                                <div class="bottom-left m-2">
                                                    <button class="btn btn-sm btn-white">New</button>
                                                </div>
                                                <figure class="background">
                                                    <img src="../assets/img/image6.jpg" alt="">
                                                </figure>
                                            </div>
                                            <small class="text-mute">Mansheri</small>
                                            <p class="mb-0">Women Jacket brown</p>
                                            <p class="small">$ 35.99</p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row text-center my-3">
                        <div class="col-6 mx-auto">
                            <button class="btn btn-sm btn-light btn-block">Show all</button>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container">
                            <h5 class="page-title">Top News</h5>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container">
                            <div class="media my-3 w-100">
                                <div class="avatar avatar-80 mr-3 has-background rounded">
                                    <figure class="background">
                                        <img src="../assets/img/image9.jpg" class="" alt="">
                                    </figure>
                                </div>
                                <div class="media-body">
                                    <small class="text-mute">11-1-2020 | 24:00 am</small>
                                    <p class="mb-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <p class="small text-mute">Published by Maxartkiller</p>
                                </div>
                            </div>
                            <div class="media my-3 w-100">
                                <div class="avatar avatar-80 mr-3 has-background rounded">
                                    <figure class="background">
                                        <img src="../assets/img/image1.jpg" class="" alt="">
                                    </figure>
                                </div>
                                <div class="media-body">
                                    <small class="text-mute">11-1-2020 | 24:00 am</small>
                                    <p class="mb-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <p class="small text-mute">Published by Maxartkiller</p>
                                </div>
                            </div>
                            <div class="media my-3 w-100">
                                <div class="avatar avatar-80 mr-3 has-background rounded">
                                    <figure class="background">
                                        <img src="../assets/img/image8.jpg" class="" alt="">
                                    </figure>
                                </div>
                                <div class="media-body">
                                    <small class="text-mute">11-1-2020 | 24:00 am</small>
                                    <p class="mb-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <p class="small text-mute">Published by Maxartkiller</p>
                                </div>
                            </div>
                            <div class="media my-3 w-100">
                                <div class="avatar avatar-80 mr-3 has-background rounded">
                                    <figure class="background">
                                        <img src="../assets/img/image10.jpg" class="" alt="">
                                    </figure>
                                </div>
                                <div class="media-body">
                                    <small class="text-mute">11-1-2020 | 24:00 am</small>
                                    <p class="mb-1">Lorem Ipsum is simply dummy text of the printing and typesetting industry.</p>
                                    <p class="small text-mute">Published by Maxartkiller</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="cart" role="tabpanel" aria-labelledby="cart-tab">
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <h5 class="page-title">My Cart</h5>
                                </div>
                                <div class="col-auto align-self-end">
                                    <h5 class="page-title small text-success">$ 109.97</h5>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="container">
                            <div class="media my-3 w-100">
                                <div class="avatar avatar-60 mr-3 has-background rounded">
                                    <div class="bottom-left m-1">
                                        <button class="btn btn-white btn-rounded text-danger btn-20"><i class="material-icons ">favorite</i></button>
                                    </div>
                                    <a href="product.jsp" class="background">
                                        <img src="../assets/img/image9.jpg" class="" alt="">
                                    </a>
                                </div>
                                <div class="media-body">
                                    <small class="text-mute">Rockstar</small>
                                    <a href="product.jsp">
                                        <p class="mb-1">Men Jacket brown</p>
                                    </a>
                                    <p><span class="text-success">$ 39.99</span> <span class="text-mute small">Size: M, Color: Brown</span></p>
                                </div>
                                <div class="align-self-center">
                                    <div class="input-group cart-count">
                                        <div class="input-group-prepend">
                                            <button class="btn btn-outline-secondary" type="button">-</button>
                                        </div>
                                        <input type="text" class="form-control" placeholder="" value="1">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="media my-3 w-100">
                                <div class="avatar avatar-60 mr-3 has-background rounded">
                                    <div class="bottom-left m-1">
                                        <button class="btn btn-white btn-rounded text-danger btn-20"><i class="material-icons ">favorite</i></button>
                                    </div>
                                    <figure class="background">
                                        <img src="../assets/img/image5.jpg" class="" alt="">
                                    </figure>
                                </div>
                                <div class="media-body">
                                    <small class="text-mute">Mediunlike</small>
                                    <p class="mb-1">Shorts unisex</p>
                                    <p><span class="text-success">$ 29.99</span> <span class="text-mute small">Size: M, Color: white</span></p>
                                </div>
                                <div class="align-self-center">
                                    <div class="input-group cart-count">
                                        <div class="input-group-prepend">
                                            <button class="btn btn-outline-secondary" type="button">-</button>
                                        </div>
                                        <input type="text" class="form-control" placeholder="" value="1">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="media my-3 w-100">
                                <div class="avatar avatar-60 mr-3 has-background rounded">
                                    <div class="bottom-left m-1">
                                        <button class="btn btn-white btn-rounded btn-20"><i class="material-icons ">favorite_border</i></button>
                                    </div>
                                    <figure class="background">
                                        <img src="../assets/img/image6.jpg" class="" alt="">
                                    </figure>
                                </div>
                                <div class="media-body">
                                    <small class="text-mute">Mansheri</small>
                                    <p class="mb-1">Women Jacket brown</p>
                                    <p><span class="text-success">$ 39.99</span> <span class="text-mute small">Size: M, Color: white</span></p>
                                </div>
                                <div class="align-self-center">
                                    <div class="input-group cart-count">
                                        <div class="input-group-prepend">
                                            <button class="btn btn-outline-secondary" type="button">-</button>
                                        </div>
                                        <input type="text" class="form-control" placeholder="" value="1">
                                        <div class="input-group-append">
                                            <button class="btn btn-outline-secondary" type="button">+</button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container">
                            <div class="form-group float-label position-relative active mb-0">
                                <div class="bottom-right mb-1">
                                    <button class="btn btn-sm btn-success">Apply</button>
                                </div>
                                <input type="text" class="form-control" value="KGIDF000120">
                                <label class="form-control-label">Apply Promo Code</label>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container">
                            <div class="card alert-success">
                                <div class="card-body p-1">
                                    <div class="media">
                                        <div class="icon icon-50 bg-white text-success mr-2"><i class="material-icons">local_offer</i></div>
                                        <div class="media-inner">
                                            <h5 class="mb-0 font-weight-normal">
                                                <b>10%</b> season discount<br>
                                                <small class="text-mute">Offer applied you have saved <b>$ 10.9</b></small>
                                            </h5>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container">
                            <div class="row my-3 h6 font-weight-normal">
                                <div class="col">Sub total</div>
                                <div class="col text-right text-mute">$ 109.97</div>
                            </div>
                            <div class="row my-3 h6 font-weight-normal">
                                <div class="col">Discount</div>
                                <div class="col text-right text-mute">-$ 10.99</div>
                            </div>
                            <hr>
                            <div class="row h6 font-weight-bold">
                                <div class="col">Net Payable</div>
                                <div class="col text-right text-mute">$ 98.98</div>
                            </div>
                        </div>
                    </div>
                    <div class="row my-3">
                        <div class="container">
                            <a href="checkout.jsp" class="btn btn-lg btn-default btn-block my-4">Checkout</a>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="favorite" role="tabpanel" aria-labelledby="favorite-tab">
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <h5 class="page-title">My Bookmarks</h5>
                                </div>
                                <div class="col-auto align-self-end">
                                    <ul class="nav nav-pills tabs-small" id="myTab" role="tablist">
                                        <li class="nav-item">
                                            <a class="nav-link" id="listview-tab" data-toggle="tab" href="#listview" role="tab" aria-controls="listview" aria-selected="false"><i class="material-icons">view_list</i></a>
                                        </li>
                                        <li class="nav-item">
                                            <a class="nav-link active" id="thumbnails-tab" data-toggle="tab" href="#thumbnails" role="tab" aria-controls="thumbnails" aria-selected="true"><i class="material-icons">view_module</i></a>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="tab-content" id="tabproductd">
                        <div class="tab-pane fade" id="listview" role="tabpanel" aria-labelledby="listview-tab">
                            <div class="row">
                                <div class="container">
                                    <div class="media my-3 w-100">
                                        <a href="product.jsp" class="avatar avatar-60 mr-3 has-background rounded">
                                            <figure class="background">
                                                <img src="../assets/img/image9.jpg" class="" alt="">
                                            </figure>
                                        </a>
                                        <div class="media-body">
                                            <small class="text-mute">Rockstar</small>
                                            <a href="product.jsp">
                                                <p class="mb-1">Men Jacket brown</p>
                                            </a>
                                            <p class="small">$ 39.99</p>
                                        </div>
                                        <div class="align-self-center">
                                            <button class="btn btn-white btn-rounded btn-40"><i class="material-icons ">delete</i></button>
                                            <button class="btn btn-white btn-rounded btn-40"><i class="material-icons ">local_mall</i></button>
                                        </div>
                                    </div>
                                    <div class="media my-3 w-100">
                                        <div class="avatar avatar-60 mr-3 has-background rounded">
                                            <figure class="background">
                                                <img src="../assets/img/image5.jpg" class="" alt="">
                                            </figure>
                                        </div>
                                        <div class="media-body">
                                            <small class="text-mute">Mediunlike</small>
                                            <p class="mb-1">Shorts unisex</p>
                                            <p class="small">$ 29.99</p>
                                        </div>
                                        <div class="align-self-center">
                                            <button class="btn btn-white btn-rounded btn-40"><i class="material-icons ">delete</i></button>
                                            <button class="btn btn-white text-danger btn-rounded btn-40"><i class="material-icons ">local_mall</i></button>
                                        </div>
                                    </div>
                                    <div class="media my-3 w-100">
                                        <div class="avatar avatar-60 mr-3 has-background rounded">
                                            <figure class="background">
                                                <img src="../assets/img/image6.jpg" class="" alt="">
                                            </figure>
                                        </div>
                                        <div class="media-body">
                                            <small class="text-mute">Mansheri</small>
                                            <p class="mb-1">Women Jacket brown</p>
                                            <p class="small">$ 39.99</p>
                                        </div>
                                        <div class="align-self-center">
                                            <button class="btn btn-white btn-rounded btn-40"><i class="material-icons ">delete</i></button>
                                            <button class="btn btn-white btn-rounded btn-40"><i class="material-icons ">local_mall</i></button>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="tab-pane fade show active" id="thumbnails" role="tabpanel" aria-labelledby="thumbnails-tab">
                            <div class="row my-3">
                                <div class="container">
                                    <div class="row">
                                        <div class="col-6 col-md-4 col-lg-3">
                                            <div class="card border-0 mb-4">
                                                <div class="card-body p-0">
                                                    <a href="product.jsp" class="h-150px has-background rounded mb-2">
                                                        <div class="top-right m-2">
                                                            <button class="btn btn-sm btn-white btn-rounded"><i class="material-icons">local_mall</i></button>
                                                        </div>
                                                        <figure class="background" style="background-image: url(&quot;../assets/img/image4.jpg&quot;);">
                                                            <img src="../assets/img/image4.jpg" alt="" style="display: none;">
                                                        </figure>
                                                    </a>
                                                    <small class="text-mute">Rockstar</small>
                                                    <a href="product.jsp">
                                                        <p class="mb-0">Men Jacket brown</p>
                                                    </a>
                                                    <p class="small">$ 39.99</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-md-4 col-lg-3">
                                            <div class="card border-0 mb-4">
                                                <div class="card-body p-0">
                                                    <div class="h-150px has-background rounded mb-2">
                                                        <div class="top-right m-2">
                                                            <button class="btn btn-sm btn-white btn-rounded text-danger"><i class="material-icons ">local_mall</i></button>
                                                        </div>
                                                        <figure class="background" style="background-image: url(&quot;../assets/img/image2.jpg&quot;);">
                                                            <img src="../assets/img/image2.jpg" alt="" style="display: none;">
                                                        </figure>
                                                    </div>
                                                    <small class="text-mute">Adididas</small>
                                                    <p class="mb-0">Women Jacket Black</p>
                                                    <p class="small">$ 49.99</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-md-4 col-lg-3">
                                            <div class="card border-0 mb-4">
                                                <div class="card-body p-0">
                                                    <div class="h-150px has-background rounded mb-2">
                                                        <div class="top-right m-2">
                                                            <button class="btn btn-sm btn-white btn-rounded text-danger"><i class="material-icons">local_mall</i></button>
                                                        </div>
                                                        <figure class="background" style="background-image: url(&quot;../assets/img/image5.jpg&quot;);">
                                                            <img src="../assets/img/image5.jpg" alt="" style="display: none;">
                                                        </figure>
                                                    </div>
                                                    <small class="text-mute">Rockstar</small>
                                                    <p class="mb-0">Shorts unisex</p>
                                                    <p class="small">$ 28.99</p>
                                                </div>
                                            </div>
                                        </div>
                                        <div class="col-6 col-md-4 col-lg-3">
                                            <div class="card border-0 mb-4">
                                                <div class="card-body p-0">
                                                    <div class="h-150px has-background rounded mb-2">
                                                        <div class="top-right m-2">
                                                            <button class="btn btn-sm btn-white btn-rounded"><i class="material-icons ">local_mall</i></button>
                                                        </div>
                                                        <figure class="background" style="background-image: url(&quot;../assets/img/image6.jpg&quot;);">
                                                            <img src="../assets/img/image6.jpg" alt="" style="display: none;">
                                                        </figure>
                                                    </div>
                                                    <small class="text-mute">Mansheri</small>
                                                    <p class="mb-0">Women Jacket brown</p>
                                                    <p class="small">$ 35.99</p>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="tab-pane fade" id="profile" role="tabpanel" aria-labelledby="profile-tab">
                    <div class="row">
                        <div class="container-fluid px-0">
                            <div class="has-background h-200px">
                                <div class="background">
                                    <img src="../assets/img/image8.jpg" alt="">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-11 col-md-6 col-lg-4 mx-auto">
                            <figure class="avatar avatar-150 rounded-circle has-background mx-auto username top-75 d-block">
                                <div class="background">
                                    <img src="../assets/img/image4.jpg" alt="">
                                </div>
                            </figure>
                            <h5 class="text-center mb-0 username-text">Maxartkiller</h5>
                            <p class="text-center small text-mute username-text">New York, United States</p>

                            <div class="list-group my-3">
                                <a href="#" class="list-group-item list-group-item-action">Account <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                                <a href="#" class="list-group-item list-group-item-action">Manage Addresses <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                                <a href="#" class="list-group-item list-group-item-action">Notifications <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                                <a href="#" class="list-group-item list-group-item-action">Passwords <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                                <a href="#" class="list-group-item list-group-item-action">Languages <i class="material-icons float-right text-mute h6 my-0">keyboard_arrow_right</i></a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>

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
    <!-- main container -->

    <!-- sidebar right -->
    <div class="sidebar sidebar-right overlay-sidebar">
        <div class="container filters-container">
            <h5>Filter Criteria</h5>
            <p class="text-mute">2154 products</p>
            <hr>
            <div class="form-group float-label pt-0 active">
                <div class="row">
                    <div class="col">
                        <input type="number" min="0" max="500" value="100" step="1" id="input-select" class="form-control">
                    </div>
                    <div class="col-auto pt-2"> to </div>
                    <div class="col">
                        <input type="number" min="0" max="500" value="100" step="1" id="input-number" class="form-control">
                    </div>
                </div>
            </div>
            <div class="form-group float-label active">
                <select class="form-control">
                    <optgroup label="Cloths">
                        <option>Men</option>
                        <option>Women</option>
                        <option>Kids</option>
                    </optgroup>
                    <optgroup label="Assosories">
                        <option>Belts</option>
                        <option>Glasses</option>
                        <option>Watches</option>
                    </optgroup>
                </select>
                <label class="form-control-label">Select Categories</label>
            </div>
            <div class="form-group float-label">
                <input type="text" class="form-control">
                <label class="form-control-label">Keyword</label>
            </div>
            <div class="form-group float-label active">
                <select class="form-control">
                    <option>10% </option>
                    <option>30%</option>
                    <option>50%</option>
                    <option>80%</option>
                </select>
                <label class="form-control-label">Offer Discount</label>
            </div>
            <button class="btn btn-default btn-block">Apply</button>
        </div>
    </div>
    <!-- sidebar right -->

    <!-- scroll to top button -->
    <button type="button" class="btn btn-default shadow scrollup bottom-right position-fixed btn-40"><i class="material-icons">expand_less</i></button>
    <!-- scroll to top button ends-->

    <!-- Modal Menu global -->
    <div class="modal fade" id="menumodal" tabindex="-1" role="dialog" aria-labelledby="menumodalTitle" aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered modal-sm" role="document">
            <div class="modal-content">
                <div class="modal-body text-center ">
                    <button type="button" class="icon icon-40 close top-right" data-dismiss="modal" aria-label="Close">
                        <i class="material-icons">close</i>
                    </button>
                    <figure class="avatar avatar-100 has-background mx-auto username">
                        <div class="background">
                            <img src="../assets/img/image4.jpg" alt="">
                        </div>
                    </figure>
                    <h5 class="mb-0 username-text">Maxartkiller</h5>
                    <p class="small text-mute username-text">New York, United States</p>

                    <div class="text-center my-4">
                        <a class="icon icon-50 rounded-circle mx-1 active"><i class="material-icons">store</i></a>
                        <a class="icon icon-50 rounded-circle mx-1"><i class="material-icons">view_carousel</i></a>
                        <a class="icon icon-50 rounded-circle mx-1"><i class="material-icons">notifications</i></a>
                        <a class="icon icon-50 rounded-circle mx-1"><i class="material-icons">memory</i></a>
                    </div>
                    <a href="signin.jsp" class="btn btn-link text-danger"><i class="material-icons">exit_to_app</i> <span class="text-link">Logout</span></a>
                </div>

            </div>
        </div>
    </div>

    <!-- Color settings -->
    <button type="button" class="btn btn-light shadow-sm colorsettings"><span class="material-icons">brightness_low</span></button>
    <div class="sidebar-right-color">
        <div class="card h-100 border-0 rounded-0">
            <div class="card-body scroll-y">
                <div class="selectoption">
                    <input type="checkbox" id="roundlayout" name="layoutround">
                    <label for="roundlayout">Round</label>
                </div>
                <div class="selectoption">
                    <input type="checkbox" id="rtllayout" name="layoutrtl">
                    <label for="rtllayout">RTL</label>
                </div>                
                <div class="selectoption">
                    <input type="checkbox" id="layoutdark" name="layoutdark">
                    <label for="layoutdark">Dark</label>
                </div>
                <hr class="my-2">
                <div class="colorselect">
                    <input type="radio" id="templatecolor1" name="sidebarcolorselect">
                    <label for="templatecolor1" class="bg-dark-blue" data-title="dark-blue"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor2" name="sidebarcolorselect">
                    <label for="templatecolor2" class="bg-dark-purple" data-title="dark-purple"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor3" name="sidebarcolorselect">
                    <label for="templatecolor3" class="bg-maroon" data-title="maroon"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor4" name="sidebarcolorselect">
                    <label for="templatecolor4" class="bg-dark-gray" data-title="dark-gray"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor5" name="sidebarcolorselect">
                    <label for="templatecolor5" class="bg-dark-pink" data-title="dark-pink"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor6" name="sidebarcolorselect">
                    <label for="templatecolor6" class="bg-dark-brown" data-title="dark-brown"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor7" name="sidebarcolorselect">
                    <label for="templatecolor7" class="bg-dark-green" data-title="dark-green"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor8" name="sidebarcolorselect">
                    <label for="templatecolor8" class="bg-red" data-title="red"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor9" name="sidebarcolorselect">
                    <label for="templatecolor9" class="bg-purple" data-title="purple"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor10" name="sidebarcolorselect">
                    <label for="templatecolor10" class="bg-blue" data-title="blue"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor11" name="sidebarcolorselect">
                    <label for="templatecolor11" class="bg-teal" data-title="teal"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor12" name="sidebarcolorselect">
                    <label for="templatecolor12" class="bg-skyblue" data-title="skyblue"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor13" name="sidebarcolorselect">
                    <label for="templatecolor13" class="bg-amber" data-title="amber"></label>
                </div>
                <div class="colorselect">
                    <input type="radio" id="templatecolor14" name="sidebarcolorselect">
                    <label for="templatecolor14" class="bg-gray" data-title="gray"></label>
                </div>
            </div>
        </div>
    </div>
    <!-- color settings ends -->

    <!-- Template js files -->
    <script src="../assets/js/jquery-3.3.1.min.js"></script>
    <script src="../assets/js/popper.min.js"></script>
    <script src="../assets/vendor/bootstrap-4.4.1/js/bootstrap.min.js"></script>

    <!-- Swiper javascript -->
    <script src="../assets/vendor/swiper/js/swiper.min.js"></script>

    <!-- Custom javascript -->
    <script src="../assets/js/main.js"></script>
    
    <!-- Cookie for color scheme -->
    <script src="../assets/vendor/cookie/jquery.cookie.js"></script>
    
    <!-- Color scheme js -->
    <script src="../assets/js/color-scheme-demo.js"></script>

    <!-- App js page level initialization functions -->
    <script src="../assets/js/app.js"></script>
</body>

</html>
