'use strict'
$(window).on('load', function () {
    setTimeout(function () {
        $('.pageloader').fadeOut('slow');
    }, 500);

    /* header active on scroll more than 50 px*/

    if ($('body').scrollTop() >= 30) {
        $('.header').addClass('active');
        $('.scrollup').addClass('active');

    } else {
        $('.header').removeClass('active');
        $('.scrollup').removeClass('active');
    }

    /* float label checking input is not empty */
    $('.float-label .form-control').on('blur', function () {
        if ($(this).val() || $(this).val().length != 0) {
            $(this).closest('.float-label').addClass('active');
        } else {
            $(this).closest('.float-label').removeClass('active');
        }
    })

    /* .search button click mobile device */
    $('.search-btn').on('click', function () {
        $('.search').slideDown().addClass('active');
    });

    /* Background */
    $('.background').each(function () {
        var imgpath = $(this).find('img');
        $(this).css('background-image', 'url(' + imgpath.attr('src') + ')');
        imgpath.hide();
    })

    /* scroll up */
    $('.scrollup').on('click', function () {
        $("html, body").animate({
            scrollTop: 0
        }, 600);
        return false;
    });

    if ($(window).scrollTop() + $(window).height() > $(document).height() - 100) {
        $('.scrollup').addClass('atbottom');
    } else {
        $('.scrollup').removeClass('atbottom');
    }

    /* smooth scroll */
    $(document).on('click', '.smoothscroll', function (event) {
        event.preventDefault();

        $('html, body').animate({
            scrollTop: $($.attr(this, 'href')).offset().top
        }, 750);
    });

    /* back button */
    $('.backbtn').on('click', function (e) {
        event.preventDefault();
        history.back(1);
    });

    /* sidebar active menu open*/
    $('.menu-btn-left').on('click', function (e) {
        e.stopPropagation();
        $('.sidebar-left').toggleClass('active');
        $('.main-container').toggleClass('active');
        $('body').toggleClass('sidebar-left-open');
    });

    $('.menu-btn-right').on('click', function (e) {
        e.stopPropagation();
        $('.sidebar-right').toggleClass('active');
        $('.main-container').toggleClass('active');
        $('body').toggleClass('sidebar-right-open');
    });

    $('.main-container').on('click', function (e) {
        if ($('.sidebar-left').hasClass('active') === true) {
            $('.sidebar-left').removeClass('active');
            $('.main-container').removeClass('active');
            setTimeout(function () {
                $('body').removeClass('sidebar-left-open');
            }, 500)
        };

        if ($('.sidebar-right').hasClass('active') === true) {
            $('.sidebar-right').removeClass('active');
            $('.main-container').removeClass('active');
            setTimeout(function () {
                $('body').removeClass('sidebar-right-open');
            }, 500)
        };

    });

    /* multilevel */
    $('.multilevel-link').on('click', function (e) {
        $(this).next('.multilevel-dropdown').slideToggle().closest('.multilevel').toggleClass('active');
    });

    /* login content container height */
    $('.login-container > .row').css({
        'min-height': $(window).outerHeight(),
    });
    $('.content-container > .row').css({
        'min-height': ($(window).outerHeight() - $('.header').outerHeight())
    });
    /* main container height */
    if ($('footer').length > 0) {
        $('.main-container').css({
            'padding-bottom': $('footer').outerHeight(),
        });
    }


    /* sidebar stlye selection */
    $('#overlay').on('click', function (e) {
        $(this).parent().find('.list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.sidebar-left').addClass('overlay-sidebar');
        $('.sidebar-left').removeClass('reveal-sidebar');
        $('.sidebar-left').removeClass('iconic-sidebar');
    });
    $('#reveal').on('click', function (e) {
        $(this).parent().find('.list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.sidebar-left').removeClass('overlay-sidebar');
        $('.sidebar-left').addClass('reveal-sidebar');
        $('.sidebar-left').removeClass('iconic-sidebar');
    });
    $('#iconic').on('click', function (e) {
        $(this).parent().find('.list-group-item').removeClass('active');
        $(this).addClass('active');
        $('.sidebar-left').removeClass('overlay-sidebar');
        $('.sidebar-left').removeClass('reveal-sidebar');
        $('.sidebar-left').addClass('iconic-sidebar');
    });


    $(function () {
        $('[data-toggle="popover"]').popover()
    });
});

$(window).on('scroll', function () {
    /* header active on scroll more than 50 px*/
    if ($(this).scrollTop() >= 30) {
        $('.header').addClass('active');
        $('.scrollup').addClass('active');
    } else {
        $('.header').removeClass('active');
        $('.scrollup').removeClass('active');
    }

    /* scroll to top  button  hide when at bottom of page*/
    if ($(window).scrollTop() + $(window).height() > $(document).height() - 100) {
        $('.scrollup').addClass('atbottom');
    } else {
        $('.scrollup').removeClass('atbottom');
    }

});


$(window).on('resize', function () {
    /* login content container height */
    $('.login-container > .row').css({
        'min-height': $(window).outerHeight(),
    })
    $('.content-container > .row').css({
        'min-height': ($(window).outerHeight() - $('.header').outerHeight())
    });

});
