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
Route::get('/error', function () {
    return view('error.index');
})->name('error');

Route::middleware('guest')->group(function() {
    Route::get('/login', 'AuthController@index')->name('login');
    Route::post('/login', 'AuthController@store')->name('login');
    Route::get('/registration', 'AuthController@registration')->name('registration');
    Route::post('/registration', 'AuthController@registration_store')->name('registration');
    Route::get('/reset-password', 'AuthController@reset_password')->name('reset-password');
    Route::post('/post-reset-password', 'AuthController@resetPassword')->name('post-reset-password');
    Route::get('/user-reset-password/{link}', 'AuthController@user_reset_password')->name('user-reset-password');
    Route::post('/update-password', 'AuthController@set_password')->name('update-password');
    Route::get('/tes', 'SendEmailController@resetPassword')->name('tes');
    
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
    Route::post('/update-portofolio', 'PortofolioController@update_portofolio')->name('update-portofolio');

    //PROFILE
    Route::post('/update', 'ProfileController@update')->name('update-profile');
    

    //LOGOUT
    Route::post('/logout', 'AuthController@logout')->name('logout');
});