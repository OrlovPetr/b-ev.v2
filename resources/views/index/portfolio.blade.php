<section id="portfolio_page">
    <div id="portfolio_page_bg">
        <div class="portfolio_page_bg bg_main_sandy" id="portfolio_page_bg_back"></div>
        <div class="portfolio_page_bg bg_main_blue" id="portfolio_page_bg_front"></div>
    </div>
    <div id="portfolio_page_content">
        <h2 class="font_main_black">Портфолио</h2>
        <div id="portfolio_page_works_nav">
            <button class="portfolio_page_nav_button all font_main_blue bg_light_sandy" name="all">Все</button>
            @foreach ($work_type as $k => $type)
                <button class="portfolio_page_nav_button font_main_blue bg_main_white" name="{{ $type->work_type_alias }}" title="{{ $type->work_type }}">{{ $type->work_type }}</button>
            @endforeach
        </div>
        <div id="portfolio_page_works_container">
            @foreach($portfolio as $k => $work)
                @include('index.content.work')
            @endforeach
        </div>
    </div>
</section>
