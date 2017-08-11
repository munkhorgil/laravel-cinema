<?php

Route::get('/', 'HomeController@index');

// Show movie info
Route::get('show/{id}', 'HomeController@show');
Auth::routes();

Route::group(['middleware' => ['web', 'auth']], function () {
    // Add movie
    Route::get('movies', 'HomeController@movies');
    Route::post('addMovie', 'ContentController@addMovie');
    // Add review
    Route::post('/addReview', 'ContentController@addReview');
    //Add genre
    Route::get('/genre', 'HomeController@genre');
    Route::post('createGenre', 'ContentController@createGenre');
});
