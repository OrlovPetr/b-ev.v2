<section id="services_page">
    <div id="services_page_bg">
        <div id="service_page_bg_1" class="service_page_bg_layer bg_light_blue"></div>
        <div id="service_page_bg_2" class="service_page_bg_layer bg_light_sandy"></div>
    </div>
    <div id="services_page_content">
        <h2 class="font_main_black">Услуги</h2>
        <h3 class="font_main_blue">Качество и эффективность - главные достоинства наших продуктов</h3>
        <div id="services_page_nav_bar">
            <button class="services_page_nav_button font_main_blue" name="all" title="Фильтр: Все услуги">Все услуги</button>
            @foreach ($service_types_aliases as $k => $type)
                <button class="services_page_nav_button font_main_blue" name="{{ $type }}" title="Фильтр: {{ $service_types_names[$k] }}">{{ $service_types_names[$k] }}</button>
            @endforeach
        </div>
        <div id="services_page_services_box" class="animated">
            @foreach ($services as $k => $service)
                <div class="services_page_service animated fadeIn {{ $service->service_category_alias }}">
                    <img src="{{ asset('/img/services') . '/' . $service->service_image }}" alt="{{ $service->service_alt_image }}" class="service_page_service_img">
                    <div class="service_page_service_filter bg_main_black"></div>
                    <div class="service_page_service_content">
                        <h4 class="font_main_white">{{ $service->service_name }}</h4>
                        <p class="small_p font_main_blue">{{ $service->service_period }}</p>
                        <p class="small_p font_main_white" style="text-decoration: line-through">{{ $service->service_price }}</p>
                        <p class="font_main_sandy">{{ $service->service_price_action }}*</p>
                        <p class="very_small_p font_main_blue">{{ $service->service_action_period }}</p>
                        <a href="/services/{{ $service->service_alias }}" class="service_page_service_link main_button font_main_sandy" title="Перейти к подробному описанию услуги">Подробнее</a>
                    </div>
                </div>
            @endforeach
        </div>
    </div>
</section>
