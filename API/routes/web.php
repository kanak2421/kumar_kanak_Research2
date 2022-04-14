<?php

/** @var \Laravel\Lumen\Routing\Router $router */

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

//Roku Video
$router->get('/', [
    'as' => 'home.index',
    'uses' => 'HomeController@index'
]);


// GET /api/songs maps to SongController function index, and lists roku
$router->get('/api/roku', [
    'as' => 'api.roku.showAllMovie',
    'uses' => 'RokuController@showAllMovie',
]);

//Show Only roku For Adult

$router->get('/api/roku/rokuforadults', [
    'as' => 'api.showMovieOnly.rokuforadults',
    'uses' => 'RokuController@rokuforadults'
]);

//Show Only roku For Kids

$router->get('/api/roku/rokuforkids', [
    'as' => 'api.showMovieOnly.rokuforKids',
    'uses' => 'RokuController@rokuforKids'
]);
// GET /api/roku/{id} maps to SongController function show, and shows a specific movie
$router->get('/api/roku/{id}', [
    'as' => 'api.roku.show',
    'uses' => 'RokuController@show'
]);

// POST /api/roku maps to SongController function store, which creates/stores a new movie
$router->post('/api/roku', [
    'as' => 'api.roku.store',
    'uses' => 'RokuController@store'
]);

// PATCH /api/roku/{id} maps to SongController function update, which updates a specific movie
$router->patch('/api/roku/{id}', [
    'as' => 'api.roku.update',
    'uses' => 'RokuController@update'
]);

// DELETE /api/roku/{id} maps to SongController function destroy, which deletes the given movie
$router->delete('/api/roku/{id}', [
    'as' => 'api.roku.delete',
    'uses' => 'RokuController@destroy'
]);


$router->get('/api/roku/onlysixty', [
    'as' => 'api.showMovieOnly.sixty',
    'uses' => 'RokuController@onlysixty'
]);


$router->get('/api/roku/onlyseventy', [
    'as' => 'api.showMovieOnly.seventy',
    'uses' => 'RokuController@onlyseventy'
]);

$router->get('/api/roku/onlyeighty', [
    'as' => 'api.showMovieOnly.eighty',
    'uses' => 'RokuController@onlyeighty'
]);

$router->get('/api/roku/onlyninty', [
    'as' => 'api.showMovieOnly.ninty',
    'uses' => 'RokuController@onlyninty'
]);

$router->get('/api/roku/onlytwenty', [
    'as' => 'api.showMovieOnly.twenty',
    'uses' => 'RokuController@onlytwenty'
]);



//Roku Video
$router->get('/', [
    'as' => 'home.index',
    'uses' => 'HomeController@index'
]);


// GET /api/songs maps to SongController function index, and lists roku
$router->get('/api/rokushow', [
    'as' => 'api.roku.showAllMovie',
    'uses' => 'RokushowController@showAllShow',
]);

//Show Only roku For Adult

$router->get('/api/rokushow/rokuforadults', [
    'as' => 'api.showOnly.rokuforadults',
    'uses' => 'RokushowController@rokuforadults'
]);

//Show Only roku For Kids

$router->get('/api/rokushow/rokuforkids', [
    'as' => 'api.showOnly.rokuforKids',
    'uses' => 'RokushowController@rokuforKids'
]);
// GET /api/rokushow/{id} maps to SongController function show, and shows a specific show
$router->get('/api/rokushow/{id}', [
    'as' => 'api.roku.show',
    'uses' => 'RokushowController@show'
]);

// POST /api/rokushow maps to SongController function store, which creates/stores a new show
$router->post('/api/rokushow', [
    'as' => 'api.roku.store',
    'uses' => 'RokushowController@store'
]);

// PATCH /api/rokushow/{id} maps to SongController function update, which updates a specific show
$router->patch('/api/rokushow/{id}', [
    'as' => 'api.roku.update',
    'uses' => 'RokushowController@update'
]);

// DELETE /api/rokushow/{id} maps to SongController function destroy, which deletes the given show
$router->delete('/api/rokushow/{id}', [
    'as' => 'api.roku.delete',
    'uses' => 'RokushowController@destroy'
]);


$router->get('/api/rokushow/onlysixty', [
    'as' => 'api.showOnly.sixty',
    'uses' => 'RokushowController@onlysixty'
]);


$router->get('/api/rokushow/onlyseventy', [
    'as' => 'api.showOnly.seventy',
    'uses' => 'RokushowController@onlyseventy'
]);

$router->get('/api/rokushow/onlyeighty', [
    'as' => 'api.showOnly.eighty',
    'uses' => 'RokushowController@onlyeighty'
]);

$router->get('/api/rokushow/onlyninty', [
    'as' => 'api.showOnly.ninty',
    'uses' => 'RokushowController@onlyninty'
]);

$router->get('/api/rokushow/onlytwenty', [
    'as' => 'api.showOnly.twenty',
    'uses' => 'RokushowController@onlytwenty'
]);






// Songs
// GET /api/songs maps to SongController function index, and lists songs
$router->get('/api/songs', [
    'as' => 'api.songs.index',
    'uses' => 'SongController@index',
    
]);

// GET /api/songs/{id} maps to SongController function show, and shows a specific movie
$router->get('/api/songs/{id}', [
    'as' => 'api.songs.show',
    'uses' => 'SongController@show'
]);

$router->get('/api/songs/onlysixty', [
    'as' => 'api.showSongsOnly.sixty',
    'uses' => 'SongController@onlysixty'
]);

$router->get('/api/songs/onlyseventy', [
    'as' => 'api.showSongsOnly.seventy',
    'uses' => 'SongController@onlyseventy'
]);

$router->get('/api/songs/onlyeighty', [
    'as' => 'api.showSongsOnly.eighty',
    'uses' => 'SongController@onlyeighty'
]);

$router->get('/api/songs/onlyninty', [
    'as' => 'api.showSongsOnly.ninty',
    'uses' => 'SongController@onlyninty'
]);

$router->get('/api/songs/onlytwenty', [
    'as' => 'api.showSongsOnly.twenty',
    'uses' => 'SongController@onlytwenty'
]);


