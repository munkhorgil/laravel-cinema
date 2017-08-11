@extends('layouts.app')

@section('content')
<div class="tabs">
  <ul>
      <li><a href="/">БҮГД</a></li>
      @foreach($genres as $genre)
          <li><a href="?genre_id={{$genre->id}}&genre={{$genre->name}}">{{ strtoupper($genre->name) }}</a></li>
      @endforeach
  </ul>
</div>
<div class="container">
    <div class="columns">
        @forelse($movies as $movie)
          <div class="column is-2">
              <div class="card">
                <div class="card-image">
                  <figure class="image">
                    <img src="{{$movie->poster}}">
                  </figure>
                </div>
                <div class="card-footer">
                    <a class="card-footer-item" href="show/{{$movie->id}}">Цааш нь</a>
                    <!-- <a class="card-footer-item">Засах</a> -->
                </div>
              </div>
          </div>
        @empty
        <article class="message is-danger">
            <div class="message-body">
                Энэ төрөлд хараахан кино нэмэгдээгүй байна.
            </div>
        </article>
        @endforelse
    </div>
</div>
@endsection
