window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    let mainLinkToServices = document.querySelector('#main_link_to_services'),
        mainLinkToServicesSign = document.querySelector('#main_link_to_services_sign div'),
        headerMenu = document.querySelector('#header_menu'),
        headerMenuButtonWrapper = document.querySelector('#header_menu_button_wrapper'),
        headerA = document.querySelector('header a'),
        headerASpan = document.querySelectorAll('header a h2 span'),
        headerLogo = document.querySelector('#header_logo_img');

    headerA.addEventListener('mouseenter', function () {
        headerLogo.style.backgroundImage = "url(\"/img/header/main_logo_small.png\")";
        headerASpan[0].style.color = "#6699FF";
        headerASpan[1].style.color = "#FFCB66";
        headerASpan[2].style.color = "#66CBCB";
    });

    headerA.addEventListener('mouseleave', function () {
        headerLogo.style.backgroundImage = "url(\"/img/header/main_logo_black_small.png\")";
        for (let i = 0; i < headerASpan.length; i++) {
            headerASpan[i].style.color = "#1E1E1E";
        }
    });

    mainLinkToServices.addEventListener('mouseenter', function () {
        mainLinkToServicesSign.style.width = "100%";
    });

    mainLinkToServices.addEventListener('mouseleave', function () {
        mainLinkToServicesSign.style.width = "0";
    });

    headerMenu.addEventListener('mouseenter', function () {
        headerMenuButtonWrapper.style.transform = "rotate(135deg)";
    });

    headerMenu.addEventListener('mouseleave', function () {
        headerMenuButtonWrapper.style.transform = "rotate(315deg)";
    });

    // window.addEventListener('scroll', function () {
    //     if (window.pageYOffset > (window.innerHeight / 2)) {
    //         let header = document.querySelector('header');
    //         header.style.backgroundColor = "#F5F5F5";
    //     } else {
    //         let header = document.querySelector('header');
    //         header.style.backgroundColor = "transparent";
    //     }
    // });
});
