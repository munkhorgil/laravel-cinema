<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends Authenticatable
{
    use Notifiable;

    protected $fillable = [
        'name', 'email', 'password',
    ];

    protected $hidden = [
        'password', 'remember_token',
    ];

    public function movies()
    {
        return $this->hasMany('App\Movie');
    }

    public function tvshows()
    {
        return $this->hasMany('App\TvShow');
    }

    public function reviews()
    {
        return $this->hasMany('App\Review');
    }
}
