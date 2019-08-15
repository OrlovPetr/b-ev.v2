window.addEventListener('load', function () {
    'use strict';

    let servicesPageNavButton = document.querySelectorAll('.services_page_nav_button'),
        servicesPageService = document.querySelectorAll('.services_page_service');

    for (let i = 0; i < servicesPageNavButton.length; i++) {
        servicesPageNavButton[i].addEventListener('click', function () {
            for (let j = 0; j < servicesPageService.length; j++) {
                if (servicesPageService[j].classList.contains(servicesPageNavButton[i].getAttribute('name')) || (servicesPageNavButton[i].getAttribute('name') === 'all')) {
                    servicesPageService[j].style.display = "flex";
                    if((window.innerWidth >= 320) && (window.innerWidth <= 800)) {
                        servicesPageService[j].style.width = "90vw";
                        servicesPageService[j].style.height = "90vw";
                    } else if ((window.innerWidth >= 801) && (window.innerWidth <= 1279)) {
                        servicesPageService[j].style.width = "calc(90vw / 3)";
                        servicesPageService[j].style.height = "calc(90vw / 3)";
                    } else {
                        servicesPageService[j].style.width = "calc(90vw / 4)";
                        servicesPageService[j].style.height = "calc(90vw / 4)";
                    }
                    servicesPageService[j].classList.remove('zoomOut');
                    servicesPageService[j].classList.add('zoomIn');
                } else {
                    servicesPageService[j].classList.remove('zoomIn');
                    servicesPageService[j].classList.add('zoomOut');
                    servicesPageService[j].style.width = 0;
                    servicesPageService[j].style.height = 0;
                    setTimeout(function () {
                        servicesPageService[j].style.display = "none";
                    }, 1000);
                }
            }
        });
    }
});
