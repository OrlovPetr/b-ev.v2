<section id="work_page" class="bg_main_white">
    <div id="work_page_bg">
        <div id="work_page_bg_3" class="work_page_bg bg_main_violet"></div>
        <div id="work_page_bg_2" class="work_page_bg bg_light_blue"></div>
        <div id="work_page_bg_1" class="work_page_bg bg_main_blue"></div>
    </div>
    <div id="work_page_container">
        <h2 class="font_main_black">{{ $portfolio->work_name }}</h2>
        <div id="work_page_techs">
            @foreach($techs as $tech)
                <img src="{{ asset('/img/techs/') . '/' . $tech . '.png'}}" alt="{{ $tech }}">
            @endforeach
        </div>
        <div id="work_page_description">
            <img src="{{ asset('/img/portfolio/big') . '/' . $portfolio->work_alias . '.jpg'}}" alt="$portfolio->work_name">
            <div id="work_page_desc">
                <h4 class="font_main_black">Описание проекта</h4>
                <p class="font_main_white">{{ $portfolio->work_description }}</p>
            </div>
        </div>
        <div id="work_page_info">
            <div id="work_page_info_text">
                <h4 class="font_main_black">Виды работы</h4>
                <div id="work_page_info_works">
                    @foreach ($whatwedo as $work)
                        <p class="font_main_white small_p">&#10004;&nbsp;{{ $work }}</p>
                    @endforeach
                </div>
                <h4 class="font_main_black">Срок выполнения</h4>
                <p class="font_main_white">{{ $portfolio->work_period }}</p>
            </div>
            <div id="work_page_info_img" class="bg_main_black">
                <img src="{{ asset('/img/portfolio/logo') . '/' . $portfolio->work_alias . '.png' }}" alt="Логотип {{ $portfolio->work_name }}">
            </div>
        </div>
        <div id="work_page_nav_block">
            <a href="/portfolio" class="main_button font_main_black bg_light_sandy">Портфолио</a>
            <a href="/services" class="main_button font_main_black bg_light_sandy">Услуги</a>
        </div>
    </div>
</section>
