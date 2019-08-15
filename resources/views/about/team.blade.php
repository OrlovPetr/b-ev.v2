<section id="about_page_team" class="bg_main_white animated fadeOut">
    <h2 class="font_main_black">Команда B&E</h2>
    @foreach($team as $k => $teammate)
        @include('about.content.team_member')
    @endforeach
</section>
