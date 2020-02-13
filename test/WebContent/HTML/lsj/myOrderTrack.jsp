<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    

</head>

<body >
    
            <!-- page content start -->
            <div class="content-container position-relative">
                <div class="background">
                    <iframe src="https://www.google.com/maps/embed?pb=!1m28!1m12!1m3!1d1673.7852979506179!2d-96.7491854141914!3d32.96234470682535!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!4m13!3e1!4m5!1s0x864c1f6010ad9fa5%3A0xef88cc03e9f241d0!2s800%20W%20Arapaho%20Rd%2C%20Richardson%2C%20TX%2075080%2C%20United%20States!3m2!1d32.9632687!2d-96.74868839999999!4m5!1s0x864c1f60237f3e21%3A0x8d5642e5b5461c9e!2sChampion%20Insurance%20Agency%2C%20819%20W%20Arapaho%20Rd%2C%20Richardson%2C%20TX%2075080%2C%20United%20States!3m2!1d32.9619108!2d-96.74914369999999!5e0!3m2!1sen!2sin!4v1577940080642!5m2!1sen!2sin" width="100%" height="100%" frameborder="0" style="border:0;" allowfullscreen=""></iframe>
                </div>
                <div class="row mx-0">
                    <div class="col-12 col-md-8 col-lg-5 col-xl-4 mx-auto align-self-end">
                        <div class="card shadow mb-4">
                            <div class="card-body">
                                <div class="media">
                                    <div class="icon icon-60 mr-3 has-background">
                                        <figure class="background">
                                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image3.jpg" alt="Generic placeholder image">
                                        </figure>
                                    </div>
                                    <div class="media-body">
                                        <small class="text-mute">2 Items</small>
                                        <p class="mb-1">Women Jacket Black, Shorts unisex</p>
                                        <p class="text-mute">Last station: Canada</p>
                                    </div>
                                </div>
                            </div>
                            <div class="card-footer justify-content-center">
                                <button class="btn btn-default" data-target="#callmodal" data-toggle="modal"><i class="material-icons">call</i> Call</button>
                                <a href="chat.jsp" class="btn btn-warning text-white ml-2"><i class="material-icons">chat</i> Chat</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!-- page content ends -->
       

   
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
                            <img src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg" alt="">
                        </div>
                    </figure>
                    <h5 class="mb-0 username-text">Maxartkiller</h5>
                    <p class="small text-mute username-text">New York, United States</p>

                    <div class="text-center my-4">
                        <a class="icon icon-50 mx-1 active"><i class="material-icons">store</i></a>
                        <a class="icon icon-50 mx-1"><i class="material-icons">view_carousel</i></a>
                        <a class="icon icon-50 mx-1"><i class="material-icons">notifications</i></a>
                        <a class="icon icon-50 mx-1"><i class="material-icons">memory</i></a>
                    </div>
                    <a href="signin.jsp" class="btn btn-link text-danger"><i class="material-icons">exit_to_app</i> <span class="text-link">Logout</span></a>
                </div>

            </div>
        </div>
    </div>

    <!-- call modal -->
    <div class="modal" tabindex="-1" role="dialog" id="callmodal" aria-hidden="true">
        <div class="modal-dialog vh-100 m-0 mw-100" role="document">
            <div class="modal-content h-100 border-0 rounded-0">
                <div class="modal-body my-0">
                    <div class="row h-100">
                        <div class="col-12 align-self-center text-center">
                            <div class="avatar avatar-150 mb-4 mx-auto position-relative">
                                <figure class="background">
                                    <img src="${pageContext.request.contextPath}/HTML/assets/img/image4.jpg" alt="">
                                </figure>
                            </div>

                            <h4 class="font-weight-normal">Courrier Expresss devine</h4>
                            <p class="text-mute">+0019541858931542</p>
                            <p class="lead">00:30</p>

                            <div class="row justify-content-center mt-4">
                                <div class="col-auto text-center mb-3">
                                    <button class="btn btn-40 btn-default text-white"><i class="material-icons">volume_up</i></button>
                                </div>
                                <div class="col-auto text-center mb-3">
                                    <button class="btn btn-40 btn-default text-white"><i class="material-icons">videocam</i></button>
                                </div>
                                <div class="col-auto text-center mb-3">
                                    <button class="btn btn-40 btn-default text-white"><i class="material-icons">mic_none</i></button>
                                </div>
                            </div>
                        </div>
                    </div>


                </div>
                <div class="modal-footer justify-content-center text-center border-0">
                    <button class="btn btn-danger text-white btncallmodal" data-dismiss="modal" aria-label="Close"><i class="material-icons">call</i> End Call</button>
                </div>
            </div>
        </div>
    </div>
    <!-- Call modal ends -->
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
  
</body>

</html>
