<?php

use App\Http\Controllers\KandidatController;
use App\Http\Controllers\PollingController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\PostController;
use App\Http\Controllers\MyPollingController;
use App\Http\Controllers\PageController;
use App\Http\Controllers\UserDataController;

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

// reader routes or homepage user reader
Route::get('/', [PostController::class, 'index']);
Route::get('/polling', [PollingController::class, 'index']);
Route::get('/polling/{polling:slug}', [PollingController::class, 'allchapter']);
Route::get('/vote', [PageController::class, 'vote']);
Route::get('/polling/kandidat/{kandidat:slug}', [PollingController::class, 'readChapter']);

//user data
Route::post('/user/changepassword', [UserDataController::class, 'changePassword'])->middleware('auth');
Route::post('/user/changerole/{user:id}', [UserDataController::class, 'changeRole'])->middleware('auth');
Route::resource('/user', UserDataController::class)->middleware(['auth', 'verified']);

//book
Route::get('/mypolling/pollings/realtime-data', [MyPollingController::class, 'realtimeData'])->middleware('auth');
Route::get('/mypolling/pollings/createSlug', [MyPollingController::class, 'createSlug'])->middleware('auth');
Route::resource('/mypolling/pollings', MyPollingController::class)->middleware('auth');
//chapter
Route::get('/mypolling/kandidat/createSlug', [KandidatController::class, 'createSlug'])->middleware('auth');
Route::resource('/mypolling/kandidat', KandidatController::class)->middleware('auth');
