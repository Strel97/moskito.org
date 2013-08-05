$(document).ready(function() {
    $('.carousel').carousel();
    $('#myTab a').click(function (e) {
        e.preventDefault();
        $(this).tab('show');
    })
    $(window).scroll(function(){
        if ( $(this).scrollTop() > 40){
            $('body').addClass("scroll");
        } else if($(this).scrollTop() <= 30 && $('body').hasClass("scroll")) {
            $('body').removeClass("scroll");
        }
    });//scroll

    $("#carousel").carouFredSel({
        width: '100%',
        height: '100%',
        scroll: {
            fx: "crossfade",
            duration: 1000
        },
        auto    : {
            pauseOnHover: 'resume'
        },
        prev: {
            button: "#carouselPrev",
            key: "left"
        },
        next: {
            button: "#carouselNext",
            key	: "right"
        }
    });

    $(".features-list ul").carouFredSel({
        width   : "100%",
        items	: 3,
        scroll	: {
            items: 2,
            duration: 1000
        },
        auto    : {
            pauseOnHover: 'resume'
        },
        swipe: {
            onTouch: true,
            onMouse: true
        },
        pagination  : ".features-pagination"
    });

    $(window).resize(function(){
        $(".features-list ul").carouFredSel({
            width   : "100%",
            items	: 3,
            scroll	: {
                items: 2,
                duration: 1000
            },
            auto    : {
                pauseOnHover: 'resume'
            },
            swipe: {
                onTouch: true,
                onMouse: true
            },
            pagination  : ".features-pagination"
        });
        if ($(window).width() < 979) {
            $(".features-list ul").carouFredSel({
                width   : "100%",
                items	: 2,
                scroll	: {
                    items: 2,
                    duration: 1000
                },
                auto    : {
                    pauseOnHover: 'resume'
                },
                swipe: {
                    onTouch: true,
                    onMouse: true
                },
                pagination  : ".features-pagination"
            });
        }
        if ($(window).width() < 768) {
            $(".features-list ul").carouFredSel({
                width   : "100%",
                items	: 2,
                scroll	: {
                    items: 2,
                    duration: 1000
                },
                auto    : {
                    pauseOnHover: 'resume'
                },
                swipe: {
                    onTouch: true,
                    onMouse: true
                },
                pagination  : ".features-pagination"
            });
        }
    });

    if ($(window).width() < 979) {
        $(".features-list ul").carouFredSel({
            width   : "100%",
            items	: 2,
            scroll	: {
                items: 2,
                duration: 1000
            },
            auto    : {
                pauseOnHover: 'resume'
            },
            swipe: {
                onTouch: true,
                onMouse: true
            },
            pagination  : ".features-pagination"
        });
    }
    if ($(window).width() < 768) {
        $(".features-list ul").carouFredSel({
            width   : "100%",
            items	: 2,
            scroll	: {
                items: 2,
                duration: 1000
            },
            auto    : {
                pauseOnHover: 'resume'
            },
            swipe: {
                onTouch: true,
                onMouse: true
            },
            pagination  : ".features-pagination"
        });
    }

    $().UItoTop({ easingType: 'easeOutQuart', text: '<i class="icon-angle-up"></i>' });

});