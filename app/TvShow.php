<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class TvShow extends Model
{
    protected $fillable = ['title', 'content', 'poster', 'user_id'];

    public function user()
    {
        return $this->belongsTo('App\User');
    }
}
