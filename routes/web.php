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
    Route::match(['GET', 'POST'], '/login', 'HomeController@home');
//    Route::match(['GET', 'POST'], '/register', 'HomeController@home');
    Route::match(['GET', 'POST'], '/admin', ['uses' => 'AdminIndexController@execute', 'as' => 'admin'])->middleware('auth');
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

Route::group(['prefix' => 'admin'], function () {
    Route::match(['GET', 'POST'], '/logout', 'AdminLogout@execute')->middleware('auth');
});

Auth::routes();

Route::get('/home', 'HomeController@index')->name('home');
