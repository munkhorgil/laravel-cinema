@extends('layouts.app')

@section('content')
<div class="columns">
    <div class="column is-4">
        @if ($errors->any())
            <div class="message">
                <ul>
                    @foreach ($errors->all() as $error)
                        <li>{{ $error }}</li>
                    @endforeach
                </ul>
            </div>
        @endif
        <br>
        <form action="addMovie" method="post">
            {{ csrf_field() }}
            <div class="field">
              <label class="label">Кино нэр</label>
              <div class="control">
                <input class="input" type="text" placeholder="Кино нэр" name="title">
              </div>
              <br>
              <label class="label">Youtube</label>
              <div class="control">
                <input class="input" type="text" placeholder="Youtube URL" name="youtube_id">
                </div><br>
              <label class="label">Зураг хаяг</label>
              <div class="control">
                <input class="input" type="text" placeholder="Зураг хаяг" name="poster">
              </div>
              <br>
              <label class="label">Тайлбар</label>
              <div class="control">
                <textarea class="textarea" placeholder="Тайлбар" name="content"></textarea>
              </div>
              <br>
              <div class="control">
                  <div class="select is-multiple">
                  <select multiple name="genre_id[]">
                      @foreach($genres as $genre)
                          <option value="{{ $genre->id }}">{{$genre->name}}</option>
                      @endforeach
                  </select>
                  </div>
              </div>
            </div>
            <div class="control">
                <button type="submit" class="button is-dark">Нэмэх</button>
            </div>
        </form>
    </div>
</div>
@endsection
