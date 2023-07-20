<?php

use Illuminate\Support\Facades\Route;
use App\Http\Livewire\Livewire;

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

Route::middleware('guest')->group(function() {
    Route::get('/login', 'AuthController@index')->name('login');
    Route::post('/login', 'AuthController@store')->name('login');
    Route::get('/registration', 'AuthController@registration')->name('registration');
    Route::post('/registration', 'AuthController@registration_store')->name('registration');
    
});

Route::middleware('auth')->group(function () {

    //GET METHOD
    Route::get('/', 'DashboardController@index')->name('dashboard');
    Route::get('/dashboard', 'DashboardController@index')->name('dashboard');
    Route::get('/list-score', 'ScoreController@index')->name('list-score');
    Route::get('/list-portofolio', 'PortofolioController@index')->name('list-portofolio');
    Route::get('/detail-portofolio/{trx_id}', 'PortofolioController@detail')->name('detail-portofolio');
    Route::get('/form-portofolio', 'PortofolioController@form_portofolio')->name('form-portofolio');
    Route::get('/case-portofolio', 'PortofolioController@case_portofolio')->name('case-portofolio');
    Route::get('/extrakulikuler-portofolio', 'PortofolioController@extrakulikuler_portofolio')->name('extrakulikuler-portofolio');
    Route::get('/karya-portofolio', 'PortofolioController@karya_portofolio')->name('karya-portofolio');
    Route::get('/tindakan-portofolio', 'PortofolioController@tindakan_portofolio')->name('tindakan-portofolio');
    Route::get('/profile', 'ProfileController@index')->name('profile');

    //PORTOFOLIO
    Route::post('/post_tindakan', 'PortofolioController@post_tindakan')->name('post-tindakan');
    Route::post('/post_case_report', 'PortofolioController@post_case_report')->name('post-case-report');
    Route::post('/post_karya', 'PortofolioController@post_karya')->name('post-karya');
    Route::post('/post_extrakulikuler', 'PortofolioController@post_extrakulikuler')->name('post-extrakulikuler');
    Route::post('/filter-portofolio', 'PortofolioController@filter_portofolio')->name('filter-portofolio');
    Route::post('/delete-portofolio', 'PortofolioController@delete_portofolio')->name('delete-portofolio');

    //PROFILE
    Route::post('/update', 'ProfileController@update')->name('update-profile');
    

    //LOGOUT
    Route::post('/logout', 'AuthController@logout')->name('logout');
});