window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    $("#main_page_skew_slider_container .owl-carousel").owlCarousel({
        items: 1,
        animateOut: 'slideOutLeft',
        animateIn: 'slideInRight',
        loop: true,
        autoplay: true,
        smartSpeed: 500,
        autoplayTimeout: 5000,
    });

    $("#main_page_left_triangle_slider_container .owl-carousel").owlCarousel({
        items: 1,
        animateOut: 'slideOutUp',
        animateIn: 'slideInUp',
        loop: true,
        autoplay: true,
        smartSpeed: 500,
        autoplayTimeout: 5000,
    });

    $("#main_page_right_triangle_slider_container .owl-carousel").owlCarousel({
        items: 1,
        animateOut: 'slideOutDown',
        animateIn: 'slideInDown',
        loop: true,
        autoplay: true,
        smartSpeed: 500,
        autoplayTimeout: 5000,
    });

    $("#main_page_content_container_description .owl-carousel").owlCarousel({
        items: 1,
        animateOut: 'fadeOut',
        animateIn: 'flipInX',
        loop: true,
        autoplay: true,
        smartSpeed: 250,
        autoplayTimeout: 5000,
    });

    let options = {
        strings: ["^2000Мы создаем яркий и легкий дизайн"],
        smartBackspace: false,
        showCursor: false,
        typeSpeed: 80
    };
    let typed = new Typed("#main_page_content_container_slider_container h1", options);

//    -----------------------------------------------------------------------------------------------------------------

//    PORTFOLIO SCRIPTS

    let portfolioPageWorksNav = document.querySelector('#portfolio_page_works_nav'),
        portfolioPageNavButton = document.querySelectorAll('.portfolio_page_nav_button'),
        portfolioPageWork = document.querySelectorAll('.portfolio_page_work');

    portfolioPageWorksNav.addEventListener('click', function (event) {
        let target = event.target;

        if (target.classList.contains('portfolio_page_nav_button')) {
            for (let i = 0; i < portfolioPageNavButton.length; i++) {
                portfolioPageNavButton[i].classList.remove('bg_light_sandy');
                portfolioPageNavButton[i].classList.add('bg_main_white');
            }
            target.classList.add('bg_light_sandy');

            for (let i = 0; i < portfolioPageWork.length; i++) {
                if (portfolioPageWork[i].classList.contains(target.getAttribute('name'))) {
                    if (!portfolioPageWork[i].classList.contains('zoomIn')) {
                        if((window.innerWidth >= 320) && (window.innerWidth <= 800)) {
                            portfolioPageWork[i].style.width = "80vw";
                            portfolioPageWork[i].style.height = "calc(80vw / 16 * 9)";
                        } else {
                            portfolioPageWork[i].style.width = "calc((100vw - 200px) / 3)";
                            portfolioPageWork[i].style.height = "calc(((100vw - 200px) / 3) / 16 * 9)";
                        }


                        portfolioPageWork[i].classList.add('zoomIn');
                        portfolioPageWork[i].classList.remove('zoomOut');
                    }
                } else {
                    if (!portfolioPageWork[i].classList.contains('zoomOut')) {
                        portfolioPageWork[i].classList.remove('zoomIn');
                        portfolioPageWork[i].classList.add('zoomOut');
                        portfolioPageWork[i].style.width = "0";
                        portfolioPageWork[i].style.height = "0";
                    }
                }
            }
        }
    })

});
