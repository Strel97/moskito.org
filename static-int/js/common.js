$(document).ready(function () {
    $(window).scroll(function () {
        if ($(this).scrollTop() > 40) {
            $('.wrapper').addClass("scroll");
        } else if ($(this).scrollTop() <= 30 && $('.wrapper').hasClass("scroll")) {
            $('.wrapper').removeClass("scroll");
        }
    });//scroll

    $().UItoTop({ easingType: 'easeOutQuart', text: '<i class="icon-angle-up"></i>' });

    $('.inactive span').tooltip({
        placement: 'bottom'
    });

    $('body').addClass('animation-start');
});