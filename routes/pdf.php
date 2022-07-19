<?php

use Illuminate\Support\Facades\Route;
use Illuminate\Support\Facades\Auth;
    
Route::get('/pdf_asignaciones' , 'PdfController@PDF')->name('pdf_asignaciones');