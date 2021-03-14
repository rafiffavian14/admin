<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\MlayananController;
use App\Http\Controllers\MtemplateController;
use App\Http\Controllers\MtteController;
use App\Http\Controllers\HomeController;
use App\Http\Controllers\MpertekController;

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



Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login.index');

// Route::get('/', function () {
//     return view('welcome');
// });

Route::group(['middleware' => 'auth'], function () {

    Route::get('/', [HomeController::class, 'index'])->name('index');


    Route::get('manajemen-layanan', [MlayananController::class, 'index'])->name('layanan.index');

    Route::post('manajemen-layanan/store', [MlayananController::class, 'store'])->name('layanan.store');

    Route::patch('manajemen-layanan/{id}', [MlayananController::class, 'update'])->name('layanan.update');

    Route::get('manajemen-layanan/{id}/edit', [MlayananController::class, 'edit'])->name('layanan.edit');

    Route::get('manajemen-layanan/{id}/show', [MlayananController::class, 'show'])->name('layanan.show');

    Route::delete('manajemen-layanan/{id}', [MlayananController::class, 'destroy'])->name('layanan.destroy');

    Route::get('api/manajemen-layanan', [MlayananController::class, 'apiLayanan'])->name('api.layanan');

    Route::get('manajemen-tte', [MtteController::class, 'index'])->name('tte.index');

    Route::post('manajemen-tte/store', [MtteController::class, 'store'])->name('tte.store');

    Route::patch('manajemen-tte/{id}', [MtteController::class, 'update'])->name('tte.update');

    Route::get('manajemen-tte/{id}/edit', [MtteController::class, 'edit'])->name('tte.edit');

    Route::delete('manajemen-tte/{id}', [MtteController::class, 'delete'])->name('tte.delete');

    Route::get('manajemen-tte/{id}/show', [MtteController::class, 'show'])->name('tte.show');

    Route::get('api/manajemen-tte', [MtteController::class, 'apiTte'])->name('api.tte');


    Route::get('manajemen-template', [MtemplateController::class, 'index'])->name('template.index');

    Route::post('manajemen-template/store', [MtemplateController::class, 'store'])->name('template.store');

    Route::get('manajemen-template/{id}/edit', [MtemplateController::class, 'edit'])->name('template.edit');

    Route::patch('manajemen-template/{id}', [MtemplateController::class, 'update'])->name('template.update');

    Route::get('api/manajemen-template', [MtemplateController::class, 'apiTemplate'])->name('api.template');

    Route::delete('manajemen-template/{id}', [MtemplateController::class, 'delete'])->name('template.delete');

    Route::get('manajemen-template/{id}/show', [MtemplateController::class, 'show'])->name('template.show');

    Route::get('manajemen-pertek', [MpertekController::class, 'index'])->name('pertek.index');

    Route::post('manajemen-pertek/store', [MpertekController::class, 'store'])->name('pertek.store');

    Route::get('manajemen-pertek/{id}/edit', [MpertekController::class, 'edit'])->name('pertek.edit');

    Route::patch('manajemen-pertek/{id}', [MpertekController::class, 'update'])->name('pertek.update');

    Route::get('api/manajemen-pertek', [MpertekController::class, 'apiPertek'])->name('api.pertek');
    



    // Route::get('logout', [OtentikasiController::class, 'logout'])->name('logout.crud');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
