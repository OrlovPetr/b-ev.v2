<section id="portfolio_page_main" class="bg_main_white">
    <h2 class="font_main_black">Портфолио</h2>
    <h3 class="font_main_blue">Вдыхаем жизнь в самые смелые Ваши идеи</h3>
    <div class="owl-carousel owl-loaded">
        <div class="owl-stage-outer">
            <div class="owl-stage">
                @foreach($portfolio as $k => $work)
                    @include('portfolio.content.work')
                @endforeach
            </div>
        </div>
    </div>
</section>
