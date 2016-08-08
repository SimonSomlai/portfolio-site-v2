//  Imagesliders
var unslider = function() {
    var w_height = $(window).height();
    $('#about .slider').find('li').css('height', w_height);
    $('#about h1').css('margin-top', w_height/2.5 +"px");
    $('.slider').unslider({
        autoplay: true,
        nav: false,
        arrows: false,
        infinite: true,
        speed: 1000,
        delay: 10000,
        pause: true
    });
    $(".reviewslider").unslider({
        arrows: false,
        autoplay: true,
        infinite: true,
        speed: 1000,
        animateHeight: true,
        delay: 15000
    });
};

//  Scrolldown Viewport On Arrow Click
var scrollDown = function() {
    $(".downarrow, #services a.button.down").on("click", function(e){
    e.preventDefault();
    var w_height = $(window).height();
    var y = $(window).scrollTop();
    $("html, body").animate({
        scrollTop: y + $(window).height() - 50
    }, w_height);   
    });
};

// Set height services section
var serviceHeight = function(){
    var w_height = $(window).height();
    $("#services").height(w_height - 140)
};

//  Resize Nav On Scroll + Bg-color
var navSize = function() {
    $(window).scroll(function() {
        if ($(document).scrollTop() > 50) {
            $(".language").addClass("languagetop")
            $('header').addClass('shrink');
            $(".top").fadeIn();
        } else {
            $(".language").removeClass("languagetop")
            $(".top").fadeOut();
            $('header').removeClass('shrink');
        }
    })
}

// Nav Lay-Out On Scrolling + Autoscrolling on click
var autoScroll = function() {
    $("nav li a").on("click", function(e) {
        var link = $(this).text().toLowerCase()
        if (link == "services" || link == "work" || link == "contact" || link == "diensten" || link == "portfolio") {
            e.preventDefault();
            if (link == "diensten") {
                var link = services;
                $('html,body').animate({
                    scrollTop: $(link).offset().top - 60
                }, 'slow');
            } else if (link == "portfolio") {
                var link = work;
                $('html,body').animate({
                    scrollTop: $(link).offset().top - 60
                }, 'slow');
            } 
            else {
                var link = "#" + link
                $('html,body').animate({
                    scrollTop: $(link).offset().top - 60
                }, 'slow');
            };
        };
    });
    $("a.special").on("click", function(){
        $('html,body').animate({
                    scrollTop: $("#contact").offset().top - 60
                }, 'slow');
    })

    $(document).on("scroll", function() {
        var scrollPos = $(document).scrollTop();
        $('nav a:not(.about)').each(function() {
            var link = $(this);
            var href = $(link.attr("href"));
            if (href.position().top - 60 <= scrollPos && href.position().top + href.height() > scrollPos) {
                $('nav a').removeClass("active");
                link.addClass("active");
            } else {
                link.removeClass("active");
            };
        });
    });
};

//  Back to top scrolling
var scrollTop = function(){
    $(".top").click(function(e) {
        e.preventDefault();
      $("html, body").animate({ scrollTop: 0 }, "slow");
      return false;
    });
};

//  Display random website options
var randomText = function() {
    $(".vowel").fadeOut(2000);
    if($("a.effect.services").text() == "Diensten"){
        var text = ["mooie", "moderne", "spectaculaire", "professionele","opmerkelijke","voortreffelijke","prachtige","fantastische","verblindende","geweldige","charmante","indrukwekkende" ,"adembenemende" ,"opvallende", "oogverblindende"]
    } else {
        var text = ["beautiful", "modern", "fancy", "professional", "remarkable", "staggering", "marvellous", "beautiful", "dazzling", "amazing", "charming", "impressive", "breathtaking", "eye-catching", "stunning"]
    }
    var randomText = text[Math.floor(Math.random() * text.length)];
    var vowels = ["a", "e", "i", "o", "u"];
    // If not a vowel
    if (vowels.indexOf(randomText[0]) == -1) {
        $(".options").fadeOut(2000);
        $(".options").promise().done(function() {
            $(".options").text(randomText).fadeIn(2000)
        })
    } else {
        $(".options").fadeOut(2000);
        $(".options").promise().done(function() {
            $(".vowel").fadeIn(2000)
            $(".options").text(randomText).fadeIn(2000);
        });
    };
};

//  Make navbar responsive
var responsiveNav = function(){
    $(".nav").on("click", function(){
        $("#menu").toggleClass("open");
    })
    // Close menu on select
    $("nav ul a").on("click", function(){
        $("#menu").removeClass("open")
    })
}

// Allow other option on project creation
var otherOption = function() {
    $(".features").on("click", function() {
        if (this.checked && this.value === "Other") {
            $("#other").removeClass("hidden");
            $("#other").on("keyup", function() {
                $("#other").removeClass("hidden");
                var input = $("#other").val();
                $("#project_features_Other").val(input);
            });
        }
        else if (!this.checked && this.value === "Other") {
            $("#other").addClass("hidden");
        };
    });
};  
 
 // Hide Reviews When Empty
var reviewsHide = function(){
    if($("ul.reviewslist li").length == 0){
        $("section#reviews").hide();
    };
};

// Parallax Scrolling
var parallax = function(){
    $(window).scroll(function(){
        var wScroll = $(this).scrollTop();
        $(".quote img").css({
            "transform" : "translate(0px, "  + wScroll / 20 +"%)"
        });
    });
};

//  Fade In On Scroll 
var fadeIn = function() {
    window.sr = ScrollReveal()
    sr.reveal('.fade', {
        duration: 800
    });
    sr.reveal('.fadein', {
        duration: 800
    });
    sr.reveal('.leftfade', {
        origin: 'left',
        duration: 800,
        viewFactor: 0.3
    });
    sr.reveal('.rightfade', {
        origin: 'right',
        duration: 800,
        viewFactor: 0.3
    });
    sr.reveal('.fadedelay', {
        delay: 500,
        duration: 800
    })
};

var skillLoad = function() {
    $(".skills h5").each(function() {
        var width = $(this).find("span.hidden").text();
    $(this).next().find(".progress-bar").width(width+"%");  
    });
};

var counter = function(){
    $('.counter').counterUp({
                delay: 20,
                time: 1000
            });
};


$(document).ready(function() {
   unslider();
   scrollDown();
   autoScroll();
   navSize();
   responsiveNav();
   serviceHeight();
   setTimeout(randomText, 6000);
   setInterval(randomText, 12000);
   setTimeout(skillLoad, 1000);
    setTimeout(counter, 800);
   jQuery.scrollSpeed(120, 400);
   otherOption();
   reviewsHide();
   scrollTop();
   fadeIn();
   parallax();
})
