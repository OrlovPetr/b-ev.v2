<div class="about_page_teammate_box animated fadeOut">
    <div class="about_page_teammate_img" style="background-image: url('{{ asset('/img/about') . '/' . $teammate->teammate_image }}')"></div>
    <div class="about_page_teammate_desc">
        <div class="about_page_teammate_desc_head">
            <h4 class="font_main_black">{{ $teammate->teammate_name }}</h4>
            <p class="font_main_blue">{{ $teammate->teammate_position }}</p>
        </div>
        <div class="about_page_teammate_desc_text">
            <p class="font_main_black small_p">{{ $teammate->teammate_work }}</p>
            <p class="font_main_black small_p">{{ $teammate->teammate_interests }}</p>
        </div>
        <a href="{{ $teammate->teammate_insta_link }}" class="about_page_teammate_desc_link" target="_blank">
            <div class="about_page_teammate_desc_link_img"></div>
            <p class="font_light_violet small_p">Instagram</p>
        </a>
    </div>
</div>
