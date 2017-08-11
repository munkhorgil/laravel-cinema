@extends('layouts.app')

@section('content')
    <h1 class="title">Кино төрөл нэмэх</h1>
    <hr>
    <div class="columns">
        <div class="column is-3">
            <div class="field">
            @if(Session::has('success'))
            <div class="notification is-info">
                <p>{{ Session::get('success') }}</p>
            </div>
            @endif
              <form action="createGenre" method="POST">
                  {{ csrf_field() }}
                  <label class="label">Нэр</label>
                  <div class="control">
                    <input class="input" type="text" placeholder="Кино төрөл" name="name">
                  </div>
                  <br>
                  <button type="submit" name="button" class="button is-dark">Нэмэх</button>
              </form>
            </div>
        </div>
    </div>
@endsection
