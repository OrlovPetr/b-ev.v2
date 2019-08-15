<!doctype html>
<html lang="{{ str_replace('_', '-', app()->getLocale()) }}">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">

    {{--  ROBOTS  --}}
    <meta name="robots" content="no-index">

    {{--  HTML Meta  --}}
    <title>Ошибка 404</title>
    <meta name="url" content="{{ Request::url() }}">
    <meta name="language" content="RU">

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
    <link rel="stylesheet" href="{{ asset('/css/404.css') }}">
    <link rel="stylesheet" href="{{ asset('/css/contacts.css') }}">

    <script src="{{ asset('/js/preloader.js') }}"></script>

</head>
<body>
