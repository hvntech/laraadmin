<?php
use Illuminate\Routing\Router;
use Nexmo\Laravel\Facade\Nexmo;
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
    return view('welcome');
});
Route::get('/send', function () {
    $send = Nexmo::message()->send([
	    'to'   => '84964264351',
	    'from' => '84964264351',
	    'text' => 'Chào Bạn.'
	]);
	echo ($send) ? "Success" : "Failure";
});
Route::get('login/{provider}',          'Auth\SocialAccountController@redirectToProvider');
Route::get('social/handle/{provider}', 'Auth\SocialAccountController@handleProviderCallback');