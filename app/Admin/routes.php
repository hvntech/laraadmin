<?php

use Illuminate\Routing\Router;

Admin::registerAuthRoutes();
Route::group([
	'middleware' => ['web'],
	'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
], function (Router $router) {
    	$router->get('/login', 'UserController@getLogin');
});

Route::group([
    'prefix'        => config('admin.route.prefix'),
    'namespace'     => config('admin.route.namespace'),
    'middleware'    => config('admin.route.middleware'),
], function (Router $router) {

    $router->get('/', 'HomeController@index');
    $router->resource('/category', 'CategoryController');

});
