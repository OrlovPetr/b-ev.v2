window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    let aboutPageMainTextBlock = document.querySelector('#about_page_main_text_block'),
        aboutPageTeam = document.querySelector('#about_page_team'),
        aboutPageMain = document.querySelector('#about_page_main'),
        aboutPageTeammateBox = document.querySelectorAll('.about_page_teammate_box');

    setTimeout(function () {
        aboutPageMainTextBlock.classList.remove('fadeOut');
        aboutPageMainTextBlock.classList.add('zoomIn');
    }, 1000);

    window.addEventListener('scroll', function () {
        if (window.pageYOffset > (aboutPageMain.offsetHeight - window.innerHeight + 300)) {
            aboutPageTeam.classList.remove('fadeOut');
            aboutPageTeam.classList.add('fadeIn');
        }
        for (let i = 0; i < aboutPageTeammateBox.length; i++) {
            if(window.pageYOffset > (aboutPageTeammateBox[i].offsetTop + aboutPageTeammateBox[i].offsetHeight - window.innerHeight * 1.5)) {
                aboutPageTeammateBox[i].classList.remove('fadeOut');
                if(i % 2 === 0) {
                    aboutPageTeammateBox[i].classList.add('fadeInLeft');
                } else {
                    aboutPageTeammateBox[i].classList.add('fadeInRight');
                }
            }
        }
    });
});
