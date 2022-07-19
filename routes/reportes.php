<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Auth::routes();
Route::middleware(['auth'])->group(function(){
 
Route::get('asignacion_report' , 'ReporteController@index')->name('asignacion_report.index');
Route::get('busqueda_rapida' , 'ActivosController@busqueda')->name('busqueda_rapida');

});