<section id="portfolio_page_howwework">
    <h2 class="font_main_black">Как мы работаем</h2>
    <h3 class="font_main_blue">Реализуем даже самые труднодостижимые цели клиента с помощью интернет решений и информационных технологий</h3>
    <div id="portfolio_page_howwework_img"></div>
    <div id="portfolio_page_howwework_slider" class="bg_light_violet">
        <h4 class="font_main_black">В нашей студии любой проект реализуется в соответствии со строгим планом</h4>
        <div id="portfolio_page_howwework_slider_navbar">
            @foreach($stages as $k => $stage)
                <button class="portfolio_page_howwework_slider_nav_button bg_light_sandy animated" name="{{ $stage->stage_alias }}" title="Перейти к описанию этапа {{ $stage->stage_title }}">
                    <p class="small_p font_main_black">{{ $stage->stage_number }} этап</p>
                    <p class="font_main_black">{{ $stage->stage_title }}</p>
                </button>
            @endforeach
        </div>
        <div id="portfolio_page_howwework_slider_box">
            @foreach($stages as $k => $stage)
                <div class="portfolio_page_howwework_slide {{ $stage->stage_alias }} animated fadeOut">
                    <h6 class="font_main_black">{{ $stage->stage_number }} этап</h6>
                    <h6 class="font_main_black">{{ $stage->stage_name }}</h6>
                    <p class="small_p font_main_white">{{ $stage->stage_desc }}</p>
                </div>
            @endforeach
        </div>
    </div>
    <div id="portfolio_page_howwework_img_box">
        <div id="portfolio_page_howwework_img_box_img"></div>
        <div id="portfolio_page_howwework_img_box_text_box">
            <h4 class="font_main_black">Применяем творческий подход к дизайну и разработке</h4>
            <p class="font_main_blue">Оказываем содействие в цифровой сфере любому виду бизнеса. Формируем доступные коммуникации с клиентами с помощью дизайна.</p>
        </div>
    </div>
</section>
