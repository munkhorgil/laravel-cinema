<!DOCTYPE html>
<html lang="{{ app()->getLocale() }}">
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <!-- CSRF Token -->
    <meta name="csrf-token" content="{{ csrf_token() }}">

    <title>{{ config('app.name', 'Laravel') }}</title>

    <!-- Styles -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/bulma/0.5.0/css/bulma.min.css">
    <link rel="stylesheet" href="{{ asset('css/main.css') }}">
</head>
<body>
    <section class="hero is-black is-fullheight">
      <div class="hero-head">
        <header class="nav">
          <div class="container">
            <div class="nav-left">
              <a href="/" class="nav-item nav-brand">
                C I N E M A
              </a>
            </div>
            <span class="nav-toggle">
              <span></span>
              <span></span>
              <span></span>
            </span>
            <a class="nav-item is-active" href="/">
                НҮҮР ХУУДАС
            </a>
            @if(Auth::check())
                <a class="nav-item" href="/movies">
                    КИНО НЭМЭХ
                </a>
                <a class="nav-item" href="/genre">
                    КИНО ТӨРӨЛ НЭМЭХ
                </a>
                <a class="nav-item" href="{{ route('logout') }}" onclick="event.preventDefault(); document.getElementById('logout-form').submit();">
                    ГАРАХ
                </a>
                <form id="logout-form" action="{{ route('logout') }}" method="POST" style="display: none;">
                    {{ csrf_field() }}
                </form>
            @else
                <a class="nav-item" href="{{route('login')}}">
                    НЭВТРЭХ
                </a>
                <a class="nav-item" href="{{route('register')}}">
                    БҮРТГҮҮЛЭХ
                </a>
            @endif
          </div>
        </header>
      </div>


      <div class="hero-body hero-header">
        <div class="container has-text-centered">
          <h1 class="title header-title">
            INTERSTELLAR
          </h1>
        </div>
      </div>
    </section>

    <section class="section">
        <!-- <div class="container">
            <div class="block">
                <div class="field is-grouped">
                    <div class="control">
                        <a href="/" class="button is-small"><i class="fa fa-home"></i></a>
                    </div>
                    <div class="control">
                        <a href="/movies" class="button is-small">КИНО НЭМЭХ</a>
                    </div>
                    <div class="control">
                        <a href="/genre" class="button is-small">КИНО ТӨРӨЛ НЭМЭХ</a>
                    </div>
                    <div class="control">
                        <a href="#" class="button is-small is-danger">ГАРАХ</a>
                    </div>
                </div>
            </div>
        </div> -->
        <div class="container">
          @yield('content')
        </div>
    </section>

      <footer class="footer">
        <div class="container">
          <div class="content has-text-centered">
            <p>
              <strong> © 2017 Хөгжүүлсэн </strong> <a href="mailto:munkhorgil@live.com">Мөнх-Оргил </a>
            </p>
          </div>
        </div>
      </footer>
    <!-- Scripts -->
    <script src="http://code.jquery.com/jquery-3.2.1.min.js"></script>
    <!-- <script src="js/bulma.js"></script> -->
    <script src="js/main.js"></script>
</body>
</html>
