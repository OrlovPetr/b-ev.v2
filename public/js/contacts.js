window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    if (document.querySelector('#contacts_short') !== null) {
        let contactsShortMainLinks = document.querySelectorAll('#contacts_short_contacts_container a'),
            contactsShortMainLinksDiv = document.querySelectorAll('#contacts_short_contacts_wrapper a div');

        for (let i = 0; i < contactsShortMainLinks.length; i++) {
            contactsShortMainLinks[i].addEventListener('mouseenter', function (event) {
                let target = event.target;
                target.querySelector('div').style.width = "100%";
            })
        }

        for (let i = 0; i < contactsShortMainLinks.length; i++) {
            contactsShortMainLinks[i].addEventListener('mouseleave', function (event) {
                let target = event.target;
                target.querySelector('div').style.width = "0";
            })
        }
    }
});
