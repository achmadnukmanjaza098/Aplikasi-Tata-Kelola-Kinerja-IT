<?php

use App\Http\Controllers\DashboardController;
use App\Http\Controllers\DimensiController;
use App\Http\Controllers\JawabanPertanyaanController;
use App\Http\Controllers\PertanyaanController;
use App\Http\Controllers\UserController;
use Illuminate\Support\Facades\Route;
use App\Http\Controllers\LoginController;

/*
|--------------------------------------------------------------------------
| Web Routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider and all of them will
| be assigned to the "web" middleware group. Make something great!
|
*/

Route::get('/', function () {
    return view('welcome');
});

Route::get('/', [LoginController::class, 'login'])->name('login');
Route::post('actionlogin', [LoginController::class, 'actionlogin'])->name('actionlogin');
Route::get('actionlogout', [LoginController::class, 'actionlogout'])->name('actionlogout')->middleware('auth');

Route::get('/dashboard', [DashboardController::class, 'dashboard'])->name('dashboard')->middleware('auth');

Route::get('/user', [UserController::class, 'user'])->name('user')->middleware('auth');
Route::get('/addUser', [UserController::class, 'addUser'])->name('addUser')->middleware('auth');
Route::get('/editUser/{id}', [UserController::class, 'editUser'])->name('editUser')->middleware('auth');
Route::post('actionAddUser', [UserController::class, 'actionAddUser'])->name('actionAddUser');
Route::put('actionEditUser/{id}', [UserController::class, 'actionEditUser'])->name('actionEditUser');
Route::get('actionDeleteUser/{id}', [UserController::class, 'actionDeleteUser'])->name('actionDeleteUser');

Route::get('/dimensi', [DimensiController::class, 'dimensi'])->name('dimensi')->middleware('auth');
Route::get('/addDimensi', [DimensiController::class, 'addDimensi'])->name('addDimensi')->middleware('auth');
Route::get('/editDimensi/{id}', [DimensiController::class, 'editDimensi'])->name('editDimensi')->middleware('auth');
Route::post('actionAddDimensi', [DimensiController::class, 'actionAddDimensi'])->name('actionAddDimensi');
Route::put('actionEditDimensi/{id}', [DimensiController::class, 'actionEditDimensi'])->name('actionEditDimensi');
Route::get('actionDeleteDimensi/{id}', [DimensiController::class, 'actionDeleteDimensi'])->name('actionDeleteDimensi');

Route::get('/pertanyaan', [PertanyaanController::class, 'pertanyaan'])->name('pertanyaan')->middleware('auth');
Route::get('/addPertanyaan', [PertanyaanController::class, 'addPertanyaan'])->name('addPertanyaan')->middleware('auth');
Route::get('/editPertanyaan/{id}', [PertanyaanController::class, 'editPertanyaan'])->name('editPertanyaan')->middleware('auth');
Route::post('actionAddPertanyaan', [PertanyaanController::class, 'actionAddPertanyaan'])->name('actionAddPertanyaan');
Route::put('actionEditPertanyaan/{id}', [PertanyaanController::class, 'actionEditPertanyaan'])->name('actionEditPertanyaan');
Route::get('actionDeletePertanyaan/{id}', [PertanyaanController::class, 'actionDeletePertanyaan'])->name('actionDeletePertanyaan');

Route::get('/jawabanPertanyaan', [JawabanPertanyaanController::class, 'jawabanPertanyaan'])->name('jawabanPertanyaan')->middleware('auth');
Route::post('actionAddJawabanPertanyaan', [JawabanPertanyaanController::class, 'actionAddJawabanPertanyaan'])->name('actionAddJawabanPertanyaan');