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

Auth::routes();

Route::get('buscar_activos' , 'ActivosController@buscar_activos')->name('activos.reporte');

Route::get('/home', 'HomeController@index')->name('home');
Route::middleware(['auth'])->group(function(){
 
    //Activos
    Route::post('activos/store' , 'ActivosController@store')->name('activos.store');
            // ->middleware('can:activos.create');

    Route::get('activos' , 'ActivosController@index')->name('activos.index');
            // ->middleware('can:activos.index');

    Route::get('activos/create' , 'ActivosController@create')->name('activos.create');
            // ->middleware('can:activos.create');

    Route::put('activos/{activo}' , 'ActivosController@update')->name('activos.update');
            // ->middleware('can:activos.edit');
    
    Route::get('activos/{activo}' , 'ActivosController@show')->name('activos.show');
            // ->middleware('can:activos.show');
    
    Route::delete('activos/{activo}' , 'ActivosController@destroy')->name('activos.destroy');
            // ->middleware('can:activos.destroy');
                
    Route::get('activos/{activo}/edit' , 'ActivosController@edit')->name('activos.edit');
            // ->middleware('can:activos.edit');
});