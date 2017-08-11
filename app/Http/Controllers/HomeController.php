<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Genre;
use App\Review;
use App\Movie;

class HomeController extends Controller
{
    public function index(Request $request)
    {
        $genres = $this->getGenres();

        if (!$request->has('genre_id'))
        {
            $movies = Movie::all();
        }
        else
        {
            $movies = Genre::find($request->genre_id)->movies()->get();
        }

        return view('index', ['genres' => $genres, 'movies' => $movies]);
    }

    public function genre()
    {
        return view('genre');
    }

    public function movies()
    {
        $genres = $this->getGenres();

        return view('movies', ['genres' => $genres]);
    }

    public function getGenres()
    {
        return Genre::all();
    }

    public function show($id)
    {
        $movie = Movie::findOrFail($id);
        $reviews = [];

        if (!empty($movie))
        {
            $reviews = Review::where('movie_id', $movie->id)->orderBy('created_at', 'desc')->get();
        }

        return view('show', ['movie' => $movie, 'reviews' => $reviews]);
    }
}
