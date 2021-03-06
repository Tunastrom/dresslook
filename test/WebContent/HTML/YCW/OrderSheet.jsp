<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page import="dto.GoodsDto"%>





<!doctype html>
<html lang="en">

<head>
    <script>
        $(document).ready(function () {
            /*  $("body").attr("data-page","payment"); */
            $("#backButton").attr("class", "btn btn-link backbtn");
            $("#backbtnText").text("arrow_back");
        });

        var date = new Date();
        var today = date.toLocaleDateString();
        var time = date.toLocaleTimeString();
        $(document).ready(function () {
            var x = time + " | " + today;
            document.getElementById("clk").innerHTML = x;


        });





    </script>
</head>

<body>
    <!-- page content start -->
    <div class="row">
        <div class="container">
            <div class="row">
                <div class="container">
                    <h5 class="page-title">주문서</h5>
                </div>
            </div>
            <div class="row my-3">
                <div class="col-12 col-md-6">
                    <div class="card mb-3">
                        <a href="track.jsp" class="card-header bg-none">
                            <div class="row">
                                <div class="col">
                                    <p class="text-mute" id="clk"></p>
                                </div>
                                <div class="col-auto pr-1">
                                    <div class="badge badge-secondary">Track</div>
                                    <i class="material-icons">keyboard_arrow_right</i>
                                </div>
                            </div>
                        </a>
                        <div class="card-body">
                            <div class="media">
                                <div class="icon icon-60 mr-3 has-background">
                                    <figure class="background">
                                        <img src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg"
                                            alt="Generic placeholder image">
                                    </figure>
                                </div>
                                <div class="media-body">
                                    <small class="text-mute">${dto.g_maker }</small>
                                    <p class="mb-1">{dto.g_name}</p>
                                    <p>{dto.g_price}</p>
                                </div>
                            </div>
                            <hr>
                            <%--  <div class="media">
                                        <div class="icon icon-60 mr-3 has-background">
                                            <figure class="background">
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg" alt="Generic placeholder image">
                                            </figure>
                                        </div>
                                        <div class="media-body">
                                            <small class="text-mute">Rockstar</small>
                                            <p class="mb-1">Shorts unisex</p>
                                            <p>$ 28.99</p>
                                        </div>
                                    </div> --%>
                        </div>
                        <div class="card-footer">
                            <div class="row">
                                <div class="col">
                                    <h6 class="mb-1">$ 150</h6>
                                    <p class="small text-mute">Including Delivery</p>
                                </div>
                                <div class="col-auto">
                                    <button class="btn btn-default btn-40"><i class="material-icons">repeat</i></button>
                                    <button class="btn btn-warning btn-40 ml-2 text-white"><i
                                            class="material-icons">star</i></button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-12 col-md-6">
                    <div>
                        <button onclick="location.href='checkout.do'">주문하기</button>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- page content ends -->
</body>

</html>