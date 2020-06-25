$(function() {
    var header = $("header");
    $(window).scroll(function() {
        var scroll = $(window).scrollTop();

        if (scroll >= 10) {
            header.addClass("stickyheader");
        } else {
            header.removeClass("stickyheader");
        }
    });
});

'use strict';

var rangeMeter = document.querySelector('#range');
var rangeShow = document.querySelector("#show");
var rangeClock = document.querySelector('.meter-clock');

function rangeChange() {
    var rotateClock = rangeMeter.value;

    rangeClock.style.transform = 'rotate(' + (-90 + ((rotateClock * 180) / 100)) + 'deg)';
    rangeShow.value = rotateClock + '%';
}

rangeMeter.addEventListener('input', rangeChange);





$(document).ready(function() {
    $('.navbar-nav a').bind('click', function(e) {
        e.preventDefault(); // prevent hard jump, the default behavior

        var target = $(this).attr("href"); // Set the target as variable

        // perform animated scrolling by getting top-position of target-element and set it as scroll target
        $('html, body').stop().animate({
            scrollTop: $(target).offset().top
        }, 600, function() {
            location.hash = target; //attach the hash (#jumptarget) to the pageurl
        });

        return false;
    });
});

$(window).scroll(function() {
    var scrollDistance = $(window).scrollTop();


    // Assign active class to nav links while scolling
    $('main section').each(function(i) {
        if ($(this).position().top <= scrollDistance) {
            $('.navbar-nav li.active').removeClass('active');
            $('.navbar-nav li').eq(i).addClass('active');
        }
    });
}).scroll();

// ------------step-wizard-------------
$(document).ready(function() {
    $('.nav-tabs > li a[title]').tooltip();

    //Wizard
    $('a[data-toggle="tab"]').on('shown.bs.tab', function(e) {

        var target = $(e.target);

        if (target.parent().hasClass('disabled')) {
            return false;
        }
    });

    $(".next-step").click(function(e) {

        var active = $('.wizard .nav-tabs li.active');
        active.next().removeClass('disabled');
        nextTab(active);

    });
    $(".prev-step").click(function(e) {

        var active = $('.wizard .nav-tabs li.active');
        prevTab(active);

    });
});

function nextTab(elem) {
    $(elem).next().find('a[data-toggle="tab"]').click();
}

function prevTab(elem) {
    $(elem).prev().find('a[data-toggle="tab"]').click();
}


$('.nav-tabs').on('click', 'li', function() {
    $('.nav-tabs li.active').removeClass('active');
    $(this).addClass('active');
});
$("select").change(function() {
    if ($(this).val() == "") $(this).css({ color: "#A7BFF1" });
    else $(this).css({ color: "#fff" });
});



$(".choicecheckbox input").change(function() {

    var checkedlabel = $(this).val();
    if (checkedlabel == 'yes' && $(this).is(":checked")) {
        $(this).closest('.combination-wrapper').find('.choices-options').show();

    } else {
        $(this).closest('.combination-wrapper').find('.choices-options').hide();
        $(this).closest('.combination-wrapper').find('.subchoices-options').hide();
        $(this).closest('.combination-wrapper').find('.cancersub-options').hide();
        $(this).closest('.combination-wrapper').find('.cancersubno-options').hide();

    }
});

$(".subchoices-options input").change(function() {

    var checkedlabel = $(this).val();
    if (checkedlabel == 'yes' && $(this).is(":checked")) {
        $(this).closest('.combination-wrapper').find('.subchoices-options').show();

    } else {
        $(this).closest('.combination-wrapper').find('.subchoices-options').hide();
        $(this).closest('.combination-wrapper').find('.cancersub-options').hide();
        $(this).closest('.combination-wrapper').find('.cancersubno-options').hide();

    }
});

$(".choices-options input").change(function() {

    var checkedlabel = $(this).val();
    if (checkedlabel == 'yes' && $(this).is(":checked")) {
        $(this).closest('.combination-wrapper').find('.cancersub-options').show();
        $(this).closest('.combination-wrapper').find('.cancersubno-options').hide();

    } else {

        $(this).closest('.combination-wrapper').find('.cancersub-options').hide();
        $(this).closest('.combination-wrapper').find('.cancersubno-options').show();

    }
});




$(".smokechoice input").change(function() {

    var checkedlabel = $(this).val();
    if (checkedlabel == 'yes' && $(this).is(":checked")) {
        $(this).closest('.behaviors-combinations').find('.currently-smoker').show();

    } else {
        $(this).closest('.behaviors-combinations').find('.currently-smoker').hide();
        $(this).closest('.behaviors-combinations').find('.smoke-status').hide();

    }
});


$(".currently-smoker input").change(function() {

    var checkedlabel = $(this).val();
    if (checkedlabel == 'yes' && $(this).is(":checked")) {
        $(this).closest('.behaviors-combinations').find('.smoke-status').show();

    } else {
        $(this).closest('.behaviors-combinations').find('.smoke-status').hide();

    }
});

setTimeout(function() {
    $("#disclaimer-popup").modal({
        backdrop: "static",
        keyboard: false
    });
}, 1500);


$('form#sendcovidmeter').submit(function(e) {

  
               floatmeterdata=Math.floor(14.55);
                $('.rang-number').val(floatmeterdata);
                $('.rang-slider').val(floatmeterdata);
                //alert($('.rang-number').val())
                rangeChange();
                
                function rangeChange() {
                    var rotateClock = $('#range').val();
                
                    $('.meter-clock').css('transform', 'rotate(' + (-90 + ((20 * 180) / 10)) + 'deg)');
                
                
                    // rangeClock.style.transform = 'rotate(' + (-90 + ((rotateClock * 180) / 100)) + 'deg)'
                    ;
                    $('#show').text(20 + '%');
                }

                swal("Thank you!", "", "success");
                //$("#contactForm").hide();
                
         

});



