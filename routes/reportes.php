<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Auth::routes();
Route::middleware(['auth'])->group(function(){
 
Route::get('asignacion_report' , 'ReporteController@index')->name('asignacion_report.index');

});