<?php

use Illuminate\Support\Facades\Route;
use App\Http\Controllers\EmpleadoController;
use App\Http\Controllers\ProductoController;
use App\Http\Controllers\ClienteController;
use App\Http\Controllers\LivechatController;
use App\Http\Livewire\ChatForm;
use App\Http\Controllers\ChatController;
use App\Http\Controllers\PointController;
use App\Http\Controllers\EmailController;

use App\Http\Controllers\VideoConferenceController;

use Illuminate\Routing\RouteGroup;
/**/

Route::get('/storage/uploads/{filename}', function ($filename) {
    return response()->file(storage_path('app/public/uploads/' . $filename));
})->where('filename', '.*');

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
    return view('auth.login');
});

/*
Route::get('/empleado', function () {
    return view('empleado.index');
});
Route::get('/empleado/create', [EmpleadoController::class, 'create']);
*/
Route::resource('empleado', EmpleadoController::class)->middleware('auth');
Route::resource('producto', ProductoController::class)->middleware('auth');
Route::resource('cliente', ClienteController::class)->middleware('auth');
Route::resource('livechat', LivechatController::class)->middleware('auth');
Route::resource('points', PointController::class)->middleware('auth');
Route::resource('jitsi', VideoConferenceController::class)->middleware('auth');
//codigo ppara sacar el register y reset
Auth::routes([/*'register'=>false,*/'reset'=>false]); /*Eliminar esto para registrar  ( 'register'=>false,) */

Route::get('/home', [EmpleadoController::class, 'index'])->name('home');

Route::group(['middleware'=>'auth'], function () {
    
    Route::get('/', [EmpleadoController::class, 'index'])->name('home');
});
// CHATBOT
Route::get('/chat', 'App\Http\Controllers\ChatController@show')->name('chat');
// Ruta para manejar el formulario a través de la API
Route::match(['get', 'post'], '/api/points', [PointController::class, 'store']);
// O usar la siguiente línea para aceptar cualquier método HTTP
// Route::any('/api/points', [PointController::class, 'store']);
// Ruta para mostrar un punto específico
Route::get('/points/{id}', [PointController::class, 'show']);
// Ruta para mostrar el formulario de correo
Route::post('/enviarcorreo', [EmailController::class, 'enviarcorreo'])->name('enviarcorreo');
Route::get('/email/index', [EmailController::class, 'index'])->name('email.index');// routes/web.php



Route::get('/video-conference', [VideoConferenceController::class, 'index']);