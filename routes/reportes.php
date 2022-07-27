<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;

Auth::routes();
Route::middleware(['auth'])->group(function(){
 
Route::get('asignacion_report' , 'ReporteController@index')->name('asignacion_report.index');
Route::get('busqueda_rapida' , 'ActivosController@busqueda')->name('busqueda_rapida');
Route::get('reporte-principal' , 'ReporteController@reporte_principal')->name('reporte-principal.index');

Route::get('reporte-usuario_asig' , 'ReporteController@traer_usuario_asig')->name('reporte-usuario_asig.index');
});