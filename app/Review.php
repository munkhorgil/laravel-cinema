<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Carbon;

class Review extends Model
{
    protected $fillable = ['content', 'user_id', 'movie_id'];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function getTime()
    {
        return Carbon::parse($this->created_at)->diffForHumans();
    }

    public function movie()
    {
        return $this->belongsTo('App\Movie');
    }
}
