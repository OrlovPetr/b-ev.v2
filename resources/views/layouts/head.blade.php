<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    {{--  ROBOTS  --}}
    <meta name="robots" content="{{ $pages->page_robots }}">

    {{--  HTML Meta  --}}
    <title>{{ $pages->page_title }}</title>
    <meta name="description" content="{{ $pages->page_description }}">
    <meta name="keywords" content="{{ $pages->page_keywords }}">
    <meta name="url" content="{{ Request::url() }}">
    <meta name="language" content="RU">
    <meta name="og:title" content="{{ $pages->page_title }}"/>
    <meta name="og:description" content="{{ $pages->page_description }}"/>
    <meta name="og:url" content="{{ Request::url() }}"/>
    <meta name="og:image" content="{{ asset('/img/header/main_logo_black_big.png') }}"/>
    <meta name="og:site_name" content="Bright&Easy"/>
    <meta name="og:email" content="assist@brightandeasy.ru"/>
    <meta name="og:phone_number" content="+7-965-470-04-30"/>
    <meta name="og:locality" content="Krasnodar"/>
    <meta name="og:country-name" content="Russia"/>
    <meta name="og:locale" content="ru_RU"/>
    <meta name="fb:app_id" content="brightandeasy"/>
    <meta name="og:type" content="website"/>

    {{--  Fonts  --}}
    <link href="https://fonts.googleapis.com/css?family=Montserrat:300,400,500,600|Roboto+Slab:300,400&display=swap"
          rel="stylesheet">

    {{--  Header  --}}
    <link rel="icon" href="{{ asset('/img/header/main_logo_black_big.png') }}"
          type="image/png">
    <link rel="canonical" href="{{ Request::url() }}"/>


    <link rel="stylesheet" href="{{ asset('/css/main.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/animate.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/preloader.css') }}">
    <link rel="stylesheet" href="{{ asset('/js/OwlCarousel2-2.3.4/dist/assets/owl.carousel.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/colors.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/fonts.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/common.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/header.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/main_menu.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/' . $pages->page_style) }}">
    <link rel="stylesheet" href="{{ asset('/css/contacts.css') }}">

    <script src="{{ asset('/js/preloader.js') }}"></script>

</head>
<body>
