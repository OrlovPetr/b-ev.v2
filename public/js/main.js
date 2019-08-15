window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    let linkA = document.querySelectorAll("a"),
        mainPreloader = document.querySelector('#main_preloader');

    for (let i = 0; i < linkA.length; i++) {
        linkA[i].addEventListener('click', function (event) {
            event.preventDefault();

        //    This is for postloader code
            mainPreloader.style.display = "flex";
            mainPreloader.classList.add('fadeIn');
            mainPreloader.classList.remove('fadeOut');
            $('*').css('overflow-y', 'hidden');

            setTimeout(function () {
                window.location = linkA[i].getAttribute("href");
            }, 500);
        })
    }

    window.addEventListener('resize', function () {
        for (let i = 0; i < linkA.length; i++) {
            mainPreloader.style.display = "flex";
            mainPreloader.classList.add('fadeIn');
            mainPreloader.classList.remove('fadeOut');
            $('*').css('overflow-y', 'hidden');

            setTimeout(function () {
                window.location.reload();
            }, 500);
        }
    });
});
