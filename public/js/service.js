window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    let servicePage = document.querySelector('#service_page'),
        servicePageBg = document.querySelector('#service_page_bg');

    servicePageBg.style.height = servicePage.offsetHeight + "px";

});
