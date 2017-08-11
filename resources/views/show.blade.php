@extends('layouts.app')

@section('content')
<h1 class="title">{{ $movie->title }}</h1>
<div class="columns">
    <div class="column is-3">
        <img src="{{$movie->poster}}" alt="" class="image 4by1">
    </div>
    <div class="column">
        <div class="block">
            <iframe width="850" height="400" src="https://www.youtube.com/embed/{{$movie->youtube_id}}?rel=0&amp;showinfo=0" frameborder="0" allowfullscreen></iframe>
            <div class="field">
                @foreach($movie->genres as $genre)
                    <span class="tag is-warning">{{$genre->name}}</span>
                @endforeach
            </div>
            <p>{{$movie->content}}</p>
        </div>

        @foreach($reviews as $review)
        <article class="media">
          <div class="media-content">
            <div class="content">
              <p>
                <strong>{{ucfirst($review->user->name)}}</strong>
                <br>
                {{$review->contet}}
                <br>
                <small class="help is-info">{{ Carbon\Carbon::parse($review->created_at)->diffForHumans() }}</small>
              </p>
            </div>
          </div>
        </article>
        @endforeach
        <br>
        @if(Auth::check())
            <article class="media">
              <form action="/addReview" method="POST">
                  {{ csrf_field() }}
                  <div class="media-content">
                    <div class="field">
                      <p class="control">
                        <textarea class="textarea" name="content" placeholder="Шүүмж бичих..."></textarea>
                      </p>
                    </div>
                    <input type="hidden" name="movie_id" value="{{$movie->id}}">
                    <nav class="level">
                      <div class="level-left">
                        <div class="level-item">
                          <button type="submit" class="button is-info">Нэмэх</button>
                        </div>
                      </div>
                    </nav>
                  </div>
              </form>
          </article><br>
         @else
         <article class="message is-danger">
          <div class="message-body">
              Зөвхөн бүртгэлтэй гишүүн сэтгэгдэл үлдээх боломжтой.
          </div>
        </article>
        @endif
    </div>
</div>
@endsection
