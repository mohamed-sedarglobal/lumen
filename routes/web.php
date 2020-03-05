<?php

/*
|--------------------------------------------------------------------------
| Application Routes
|--------------------------------------------------------------------------
|
| Here is where you can register all of the routes for an application.
| It is a breeze. Simply tell Lumen the URIs it should respond to
| and give it the Closure to call when that URI is requested.
|
*/

$router->get('/', function () use ($router) {
    return $router->app->version();
});

$router->group(['prefix'=>'api/v1'], function() use($router){
$router->get('/products', 'ProductController@index');
$router->post('/product', 'ProductController@create');
$router->get('/product/{id}', 'ProductController@show');
$router->put('/product/{id}', 'ProductController@update');
$router->delete('/product/{id}', 'ProductController@destroy');
});

$router->group(['prefix'=>'api/v2'], function() use($router){
$router->get('/items', 'ItemController@index');
$router->post('/item', 'ItemController@create');
$router->get('/item/{id}', 'ItemController@show');
$router->put('/item/{id}', 'ItemController@update');
$router->delete('/item/{id}', 'ItemController@destroy');
});

$router->group(['prefix'=>'api/v3'], function() use($router){
$router->get('/users', 'UserController@index');
$router->post('/user', 'UserController@create');
$router->get('/user/{id}', 'UserController@show');
$router->put('/user/{id}', 'UserController@update');
$router->delete('/user/{id}', 'UserController@destroy');
});

$router->group(['prefix'=>'api/v4'], function() use($router){
$router->get('/todo', 'TodoController@index');
$router->post('/todo', 'TodoController@create');
$router->get('/todo/{id}', 'TodoController@show');
$router->put('/todo/{id}', 'TodoController@update');
$router->delete('/todo/{id}', 'TodoController@destroy');
});