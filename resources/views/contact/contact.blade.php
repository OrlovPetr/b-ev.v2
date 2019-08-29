<section id="contact_page" class="bg_main_white">
    <div id="contact_page_img"></div>
    <div id="contact_page_form_wrapper" class="bg_main_green">
        <h2 class="font_main_black">Контакты</h2>
        <p class="font_main_white contact_page_p">Остались вопросы или появились предложения?<br>Свяжитесь с нами!</p>
        <div id="contact_page_contacts">
            <div class="contacts_page_contact_box">
                <p class="small_p font_main_white">Наш телефон</p>
                <a href="tel:+79654700430" class="small_p font_main_sandy" title="Позвоните нам">+7 (965) 470-04-30</a>
            </div>
            <div class="contacts_page_contact_box">
                <p class="small_p font_main_white">Наш email</p>
                <a href="mailto:assist@brightandeasy.ru" class="small_p font_main_sandy" title="Напишите нам">assist@brightandeasy.ru</a>
            </div>
        </div>
        <p class="font_main_white contact_page_p_form">Или заполните форму и отправьте нам!</p>
        <form action="/contact" id="contact_page_form" method="post">
            @csrf
            <div class="contact_page_form_el">
                <label for="guest_service" class="font_main_white">Выберите интересующую Вас услугу</label>
                <select name="guest_service" id="guest_service" class="font_main_blue bg_main_white input_field animated" title="Выберите из списка интересующую Вас услугу">
                    <option @if (!isset($selected))
                            selected
                            @endif value="Мне нужна консультация специалиста" class="font_main_blue bg_main_white input_field">Мне нужна консультация специалиста</option>
                    @foreach($service_aliases as $k => $alias)
                        <option @if (isset($selected) && ($value === $alias))
                                selected
                                @endif value="{{ $service_names[$k] }}" class="font_main_blue bg_main_white input_field">{{ $service_names[$k] }}</option>
                    @endforeach
                </select>
            </div>
            <div class="contact_page_form_el">
                <label for="guest_name" class="font_main_white">Как к Вам обращаться?</label>
                <input id="guest_name"  class="font_main_blue bg_main_white input_field" type="text" required name="guest_name" title="Укажите, как к Вам обращаться?">
                <p id="guest_name_info" class="font_main_sandy small_p"></p>
            </div>
            <div class="contact_page_form_el">
                <label for="guest_phone" class="font_main_white">Ваш контактный номер телефона</label>
                <input id="guest_phone"  class="font_main_blue bg_main_white input_field" type="tel" required name="guest_phone" title="Укажите Ваш номер телефона, чтобы мы могли оперативно связаться с Вами">
                <p id="guest_phone_info" class="font_main_sandy small_p"></p>
            </div>
            <div class="contact_page_form_el">
                <label for="guest_mail" class="font_main_white">Электронная почта для ответа</label>
                <input id="guest_mail"  class="font_main_blue bg_main_white input_field" type="email" required name="guest_mail" title="Укажите адрес Вашей электронной почты, чтобы мы смогли выслать материалы по интересующей Вас услуге">
                <p id="guest_mail_info" class="font_main_sandy small_p"></p>
            </div>
            <div class="contact_page_form_textarea">
                <label for="guest_message" class="font_main_white" title="Опишите подробнее интересующие Вас моменты или замечания">Текст Вашего сообщения</label>
                <textarea name="guest_message" id="guest_message" class="font_main_blue bg_main_white input_field"></textarea>
            </div>
            <input type="hidden" id="g-recaptcha-response" name="g-recaptcha-response">
            <button type="submit" id="contact_page_form_submit" class="main_button font_main_sandy" title="Отправьте нам Ваше сообщение">Отправить</button>
        </form>
    </div>
</section>
