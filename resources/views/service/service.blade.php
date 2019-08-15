<section id="service_page" class="bg_main_white">
    <div id="service_page_bg">
        <div class="service_page_bg_layer bg_light_violet" id="service_page_bg_layer_1"></div>
        <div class="service_page_bg_layer bg_light_blue" id="service_page_bg_layer_2"></div>
        <div class="service_page_bg_layer bg_light_blue" id="service_page_bg_layer_3"></div>
    </div>
    <div id="service_page_content">
        <h2 class="font_main_black">{{ $service->service_name }}</h2>
        <div id="service_page_description_block">
            <img src="{{ asset('/img/services') . '/' . $service->service_image }}"
                 alt="{{ $service->service_alt_image }}" id="service_page_desc_img">
            <div id="service_page_desc_block_text">
                <h4 class="font_main_black">Описание услуги</h4>
                <p class="font_main_blue">{{ $service->service_description }}</p>
            </div>
        </div>
        <div id="service_page_about_block">
            <div id="service_page_for_who_block">
                <h4 class="font_main_black">Кому подойдет</h4>
                @foreach ($clients as $client)
                    <p class="font_main_blue">&#10004;&nbsp;{{ $client }}</p>
                @endforeach
            </div>
            <div id="service_page_why_block">
                <h4 class="font_main_black">Почему стоит заказать у нас</h4>
                @foreach ($differences as $difference)
                    <p class="font_main_blue small_p">&#10004;&nbsp;{{ $difference }}</p>
                @endforeach
            </div>
        </div>
        <div id="service_page_terms_block">
            <div id="service_page_price">
                <h4 class="font_main_black">Цена</h4>
                <h3 class="font_main_blue">{{ $service->service_price }}</h3>
                <h2 class="font_main_sandy">{{ $service->service_price_action }}</h2>
                <p class="font_main_blue">{{ $service->service_action_period }}</p>
            </div>
            <div id="service_page_period">
                <h4 class="font_main_black">Сроки</h4>
                <h3 class="font_main_blue">{{ $service->service_period }}</h3>
            </div>
        </div>
        <form action="/contact" method="post">
            @csrf
            <input type="hidden" name="service_type" value="{{ $service->service_alias }}|selected">
            <button type="submit" class="main_button font_main_sandy" title="Перейти к форме обратной связи и заказать услугу {{ $service->service_name }}">Заказать {{ $service->service_name }}</button>
        </form>
    </div>
</section>
