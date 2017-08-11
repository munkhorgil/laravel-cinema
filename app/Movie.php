<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Movie extends Model
{
    protected $fillable = ['title', 'content', 'poster', 'user_id', 'youtube_id'];

    public function user()
    {
        return $this->belongsTo('App\User');
    }

    public function genres()
    {
        return $this->belongsToMany('App\Genre');
    }

    public function reviews()
    {
        return $this->hasMany('App\Review');
    }
}
