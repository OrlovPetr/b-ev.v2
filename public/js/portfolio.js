window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    let portfolioPageHowweworkSliderNavButton = document.querySelectorAll('.portfolio_page_howwework_slider_nav_button'),
        portfolioPageHowweworkSliderNavButtonWidth = 0,
        portfolioPageHowweworkSliderBox = document.querySelector('#portfolio_page_howwework_slider_box'),
        portfolioPageHowweworkSlide = document.querySelectorAll('.portfolio_page_howwework_slide'),
        portfolioPageHowweworkSlideHeight = 0,
        portfolioPageHowweworkImgBoxImg = document.querySelector('#portfolio_page_howwework_img_box_img');

    $("#portfolio_page_main .owl-carousel").owlCarousel({
        loop: true,
        items: 1,
        animateOut: 'slideOutLeft',
        animateIn: 'slideInRight',
        nav: true,
        dots: true,
        navText: ["", ""]
    });

    for (let i = 0; i < portfolioPageHowweworkSliderNavButton.length; i++) {
        if((window.innerWidth < window.innerHeight) && (window.innerWidth >= 320) && (window.innerWidth <= 480)) {
            portfolioPageHowweworkSliderNavButtonWidth = window.innerWidth / 3 + "px";
        } else if ((window.innerWidth < window.innerHeight) && (window.innerWidth > 480) && (window.innerWidth <= 800)) {
            portfolioPageHowweworkSliderNavButtonWidth = window.innerWidth / 4 + "px";
        } else if((window.innerWidth > window.innerHeight) && (window.innerWidth >= 480) && (window.innerWidth <= 800)) {
            portfolioPageHowweworkSliderNavButtonWidth = window.innerWidth / 4 + "px";
        }else {
            portfolioPageHowweworkSliderNavButtonWidth = window.innerWidth / portfolioPageHowweworkSliderNavButton.length + "px";
        }
        portfolioPageHowweworkSliderNavButton[i].style.width = portfolioPageHowweworkSliderNavButtonWidth;
    }

    portfolioPageHowweworkSliderNavButton[0].classList.remove('bg_light_sandy');
    portfolioPageHowweworkSliderNavButton[0].classList.add('bg_main_blue');
    portfolioPageHowweworkSlide[0].classList.remove('fadeOut');
    portfolioPageHowweworkSlide[0].classList.add('fadeIn');

    for (let i = 0; i < portfolioPageHowweworkSlide.length; i++) {
        if(portfolioPageHowweworkSlide[i].offsetHeight > portfolioPageHowweworkSlideHeight) {
            portfolioPageHowweworkSlideHeight = portfolioPageHowweworkSlide[i].offsetHeight;
        }
    }

    for (let i = 0; i < portfolioPageHowweworkSlide.length; i++) {        console.log(portfolioPageHowweworkSlide[i].style.height);
        if(((window.innerWidth < window.innerHeight) && (window.innerWidth >= 320) && (window.innerWidth <= 800)) || (window.innerWidth > window.innerHeight) && (window.innerWidth >= 480) && (window.innerWidth <= 800)) {
            portfolioPageHowweworkSlide[i].style.height = portfolioPageHowweworkSlideHeight + 40 + "px";
        } else {
            portfolioPageHowweworkSlide[i].style.height = portfolioPageHowweworkSlideHeight + "px";
        }
    }

    if(((window.innerWidth < window.innerHeight) && (window.innerWidth >= 320) && (window.innerWidth <= 800)) || (window.innerWidth > window.innerHeight) && (window.innerWidth >= 480) && (window.innerWidth <= 800)) {
        portfolioPageHowweworkSliderBox.style.height = portfolioPageHowweworkSlideHeight + 120 + "px";
    } else {
        portfolioPageHowweworkSliderBox.style.height = portfolioPageHowweworkSlideHeight + "px";
    }

    for (let i = 0; i < portfolioPageHowweworkSliderNavButton.length; i++) {
        portfolioPageHowweworkSliderNavButton[i].addEventListener('click', function () {
            for (let i = 0; i < portfolioPageHowweworkSliderNavButton.length; i++) {
                portfolioPageHowweworkSliderNavButton[i].classList.remove('bg_main_blue');
                portfolioPageHowweworkSliderNavButton[i].classList.add('bg_light_sandy');
            }
            portfolioPageHowweworkSliderNavButton[i].classList.remove('bg_light_sandy');
            portfolioPageHowweworkSliderNavButton[i].classList.add('bg_main_blue');
            for (let i = 0; i < portfolioPageHowweworkSliderNavButton.length; i++) {
                portfolioPageHowweworkSlide[i].classList.remove('fadeIn');
                portfolioPageHowweworkSlide[i].classList.add('fadeOut');
            }
            portfolioPageHowweworkSlide[i].classList.remove('fadeOut');
            portfolioPageHowweworkSlide[i].classList.add('fadeIn');
        });
    }

    portfolioPageHowweworkImgBoxImg.style.height = (portfolioPageHowweworkImgBoxImg.offsetWidth / 2 * 3) + "px";
});
