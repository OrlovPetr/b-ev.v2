<a href="portfolio/{{ $work->work_alias }}" class="portfolio_page_work {{ $work->work_type_alias }} animated zoomIn font_main_white" style="background-image: url('{{ asset('img/portfolio/small') . '/' . $work->work_alias . '.png' }}')" title="{{ $work->work_name }}">
    <div class="portfolio_page_work_filter">
        <h5>{{ $work->work_name }}</h5>
    </div>
</a>
