window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    let mainPreloader = document.querySelector('#main_preloader');

    setTimeout(function () {
        mainPreloader.classList.add('fadeOut');
        $('*').css('overflow-y', 'auto');
        setTimeout(function () {
            mainPreloader.style.display = "none";
        }, 500);
    }, 500);

});
