<div class="owl-item" style="background-image: url('{{ asset('/img/portfolio/big') . '/' . $work->work_alias . '.jpg' }}')">
    <div class="portfolio_page_main_slide_filter"></div>
    <div class="portfolio_page_main_slide_wrapper">
        <div class="portfolio_page_main_slide_logo" style="background-image: url('{{ asset('/img/portfolio/logo') . '/' . $work->work_alias . '.png' }}')"></div>
        <h2 class="font_main_blue">{{ $work->work_name }}</h2>
        <p class="font_main_white">{{ $work->work_description }}</p>
        <a href="/portfolio/{{ $work->work_alias }}" class="main_button font_main_sandy" title="Узнать подробности о проекте {{ $work->work_name }}">Подробнее</a>
    </div>
</div>
