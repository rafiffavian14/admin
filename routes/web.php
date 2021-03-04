<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\Auth\LoginController;
use App\Http\Controllers\MlayananController;
use App\Http\Controllers\MtemplateController;
use App\Http\Controllers\MtteController;
use App\Http\Controllers\HomeController;

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

Route::get('/', [HomeController::class, 'index'])->name('index');

Route::get('/login', [LoginController::class, 'showLoginForm'])->name('login.index');

// Route::get('/', function () {
//     return view('welcome');
// });

Route::group(['middleware' => 'auth'], function () {


    Route::get('manajemen-layanan', [MlayananController::class, 'index'])->name('layanan.index');

    Route::post('manajemen-layanan/store', [MlayananController::class, 'store'])->name('layanan.store');

    Route::patch('manajemen-layanan/{id}', [MlayananController::class, 'update'])->name('layanan.update');

    Route::get('manajemen-layanan/{id}/edit', [MlayananController::class, 'edit'])->name('layanan.edit');

    Route::get('manajemen-layanan/{id}/show', [MlayananController::class, 'show'])->name('layanan.show');

    Route::delete('manajemen-layanan/{id}', [MlayananController::class, 'destroy'])->name('layanan.destroy');

    Route::get('api/manajemen-layanan', [MlayananController::class, 'apiLayanan'])->name('api.layanan');

    Route::get('manajemen-tte', [MtteController::class, 'index'])->name('tte.index');

    Route::post('manajemen-tte/store', [MtteController::class, 'store'])->name('tte.store');

    Route::put('manajemen-tte/{id}', [MtteController::class, 'update'])->name('tte.update');

    Route::get('api/manajemen-tte', [MtteController::class, 'apiTte'])->name('api.tte');

    Route::get('manajemen-template', [MtemplateController::class, 'index'])->name('template.index');

    Route::post('manajemen-template/store', [MtemplateController::class, 'store'])->name('template.store');

    Route::put('manajemen-template/{id}', [MtemplateController::class, 'update'])->name('template.update');

    Route::get('api/manajemen-template', [MtemplateController::class, 'apiTemplate'])->name('api.template');
    



    // Route::get('logout', [OtentikasiController::class, 'logout'])->name('logout.crud');
});

Auth::routes();

Route::get('/home', [App\Http\Controllers\HomeController::class, 'index'])->name('home');
