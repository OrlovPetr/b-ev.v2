window.addEventListener('DOMContentLoaded', function () {
    'use strict';

    let select = document.querySelector('select'),
        guestName = '#guest_name',
        guestNameInfo = '#guest_name_info',
        guestPhone = '#guest_phone',
        guestPhoneInfo = '#guest_phone_info',
        guestMail = '#guest_mail',
        guestMailInfo = '#guest_mail_info',
        regExpName = /[A-Za-zА-Яа-яЁё\s_.-]{1,30}/g,
        regExpPhone = /([+][0-9]{10,20})|([0-9]{9,20})/g,
        regExpMail = /[A-Za-z0-9.-_]{1,30}@[A-Za-z.-_]{1,30}[.][A-Za-z-_]{2,10}/g,
        alertColorClass = "font_main_sandy",
        acceptColorClass = "font_dark_green";

    select.addEventListener('mousedown', function () {
        if(getComputedStyle(select).backgroundImage.includes('down_arrow')) {
            select.style.backgroundImage = "url(\"/img/contact/up_arrow.png\")";
        }
    });
    select.addEventListener('mouseup', function () {
        if(getComputedStyle(select).backgroundImage.includes('up_arrow')) {
            select.style.backgroundImage = "url(\"/img/contact/down_arrow.png\")";
        }
    });


    document.querySelector(guestName).addEventListener('change', function () {
        validate(regExpName, guestName, guestNameInfo, alertColorClass, acceptColorClass, "Поле не заполнено", "Поле может содержать только символы русского и английского алфавита", "Все супер!");
    });

    document.querySelector(guestPhone).addEventListener('change', function () {
        validate(regExpPhone, guestPhone, guestPhoneInfo, alertColorClass, acceptColorClass, "Поле не заполнено или содержит некорректный номер телефона", "Поле может содержать только цифры и символ \"+\"", "Все супер!")
    });

    document.querySelector(guestMail).addEventListener('change', function () {
        validate(regExpMail, guestMail, guestMailInfo, alertColorClass, acceptColorClass, "Поле не заполнено или содержит некорректный Email", "Поле должно содержать корректный Email-адрес", "Все супер!")
    });

    if(document.querySelector('#contact_page_form')) {
        document.querySelector('#contact_page_form').onsubmit = function () {
            let nameCheck = validate(regExpName, guestName, guestNameInfo, alertColorClass, acceptColorClass, "Поле не заполнено", "Поле может содержать только символы русского и английского алфавита", "Все супер!"),
                phoneCheck = validate(regExpPhone, guestPhone, guestPhoneInfo, alertColorClass, acceptColorClass, "Поле не заполнено или содержит некорректный номер телефона", "Поле может содержать только цифры и символ \"+\"", "Все супер!"),
                mailCheck = validate(regExpMail, guestMail, guestMailInfo, alertColorClass, acceptColorClass, "Поле не заполнено или содержит некорректный Email", "Поле должно содержать корректный Email-адрес", "Все супер!");

            if(nameCheck === false || phoneCheck === false || mailCheck === false) {
                return false;
            }
        }
    }






    //ФУНКЦИЯ ВАЛИДАЦИИ ПОЛЕЙ
    function validate(regExp, inputString, outputString, alertColorClass, acceptColorClass, emptyFieldMessage, wrongFieldMessage, acceptFieldMessage) {
        let inputElement = document.querySelector(inputString),
            outputElement = document.querySelector(outputString),
            string = inputElement.value,
            result = regExp.exec(string);

        outputElement.innerText = "";
        regExp.lastIndex = 0;

        if((inputElement.value !== null) && (inputElement.value !== "") && (result !== null)) {

            if(string.length !== result[0].length) {
                outputElement.classList.remove(acceptColorClass);
                outputElement.classList.add(alertColorClass);
                outputElement.innerText = wrongFieldMessage;
                return false;
            } else {
                outputElement.classList.remove(alertColorClass);
                outputElement.classList.add(acceptColorClass);
                outputElement.innerText = acceptFieldMessage;
                return true;
            }
        } else {
            outputElement.classList.remove(acceptColorClass);
            outputElement.classList.add(alertColorClass);
            outputElement.innerText = emptyFieldMessage;
            return false;
        }
    }
});
