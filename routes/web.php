<?php

use Illuminate\Support\Facades\Route;
use \App\Http\Controllers\PagesController;

#Route::get('/', [PagesController::class,'root'])->name('root');
Route::get('/', 'PagesController@root')->name('root');

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
