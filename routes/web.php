<?php

use Illuminate\Support\Facades\Route;

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

Route::get('/', function () {
    return view('welcome');
});
Route::get('/home', 'HomeController@index')->name('home');

Route::get('/', function () {
    return view('welcome');
});
// Route::get('/home', 'ActivosController@index')->name('home');
    
Route::get('/reporte_activos', 'ActivosController@report_act')->name('reporte_activos');
Route::get('/reporte_activos_filter', 'ActivosController@report_filter')->name('reporte_activos_filter');

Auth::routes();
