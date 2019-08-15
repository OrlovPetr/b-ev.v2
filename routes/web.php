<?php

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/

Route::group([], function () {
    Route::match(['GET', 'POST'], '/', ['uses' => 'IndexController@execute', 'as' => 'index']);
    Route::match(['GET', 'POST'], '/{page}', ['uses' => 'PageController@execute', 'as' => 'page']);
});

Route::group(['prefix' => 'portfolio'], function () {
    Route::match(['GET', 'POST'], '/{work}', 'WorkPageController@execute');
});

Route::group(['prefix' => 'services'], function () {
    Route::match(['GET', 'POST'], '/{service}', 'ServicePageController@execute');
});
//
//Route::group(['prefix' => 'blog'], function () {
//    Route::match(['GET', 'POST'], '/{article}', 'ArticlePageController@execute');
//});
//
