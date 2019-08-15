window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    let siteMenu = document.querySelector('#site_menu'),
        headerMenu = document.querySelector('#header_menu'),
        siteMenuCloseButton = document.querySelector('#site_menu_close_button'),
        siteMenuCloseButtonDiv = document.querySelector('#site_menu_close_button div');

    headerMenu.addEventListener('click', function () {
        $('*').css('overflow-y', 'hidden');
        siteMenu.style.top = 0;
    });

    siteMenuCloseButton.addEventListener('mouseenter', function () {
        siteMenuCloseButtonDiv.style.transform = "rotate(360deg)";
    });

    siteMenuCloseButton.addEventListener('mouseleave', function () {
        siteMenuCloseButtonDiv.style.transform = "rotate(0deg)";
    });

    siteMenuCloseButton.addEventListener('click', function () {
        $('*').css('overflow-y', 'auto');
        siteMenu.style.top = "-100vh";
    });
});
