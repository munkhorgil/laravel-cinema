<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Genre;
use App\Movie;
use App\Review;
use Session;

class ContentController extends Controller
{
    public function createGenre(Request $request)
    {
        $genre = Genre::create($request->all());

        Session::flash('success', 'Амжилттай нэмэгдлээ');

        return redirect()->back();
    }

    public function addMovie(Request $request)
    {
        // Add movie
        $movie = new Movie();
        $movie->title = ucfirst($request->title);
        $movie->content = $request->content;
        $movie->poster = $request->poster;
        $movie->youtube_id = $request->youtube_id;
        $movie->user_id = \Auth::user()->id;
        $movie->save();

        // Joining genre to movie
        foreach ($request->genre_id as $genre) {
            $movie->genres()->attach($genre);
        }

        return redirect()->back();
    }

    public function addReview(Request $request)
    {
        $review = new Review();
        $review->contet = $request->content;
        $review->movie_id = $request->movie_id;
        $review->user_id = \Auth::user()->id;
        $review->save();

        return redirect()->back();
    }
}
