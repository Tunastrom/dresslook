<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">
<head>
</head>
            <!-- page content start -->
            <div class="row">
                <div class="container">
                    <div class="row">
                        <div class="container">
                            <div class="row">
                                <div class="col">
                                    <h5 class="page-title">좋아요</h5>
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
                                        <div class="avatar avatar-60 mr-3 has-background rounded">
                                            <figure class="background">
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/image9.jpg" class="" alt="">
                                            </figure>
                                        </div>
                                        <div class="media-body">
                                            <small class="text-mute">Rockstar</small>
                                            <p class="mb-1">Men Jacket brown</p>
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
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg" class="" alt="">
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
                                                <img src="${pageContext.request.contextPath}/HTML/assets/img/image6.jpg" class="" alt="">
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
                                                    <div class="h-150px has-background rounded mb-2">
                                                        <div class="top-right m-2">
                                                            <button class="btn btn-sm btn-white btn-rounded"><i class="material-icons">local_mall</i></button>
                                                        </div>
                                                        <figure class="background" style="background-image: url(&quot;${pageContext.request.contextPath}/HTML/assets/img/image4.jpg&quot;);">
                                                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg" alt="" style="display: none;">
                                                        </figure>
                                                    </div>
                                                    <small class="text-mute">Rockstar</small>
                                                    <p class="mb-0">Men Jacket brown</p>
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
                                                        <figure class="background" style="background-image: url(&quot;${pageContext.request.contextPath}/HTML/assets/img/image2.jpg&quot;);">
                                                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image2.jpg" alt="" style="display: none;">
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
                                                        <figure class="background" style="background-image: url(&quot;${pageContext.request.contextPath}/HTML/assets/img/image5.jpg&quot;);">
                                                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image5.jpg" alt="" style="display: none;">
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
                                                        <figure class="background" style="background-image: url(&quot;${pageContext.request.contextPath}/HTML/assets/img/image6.jpg&quot;);">
                                                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image6.jpg" alt="" style="display: none;">
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
            </div>
            <!-- page content ends -->
    <script src="${pageContext.request.contextPath}/HTML/assets/js/app.js"></script>
</body>

</html>
