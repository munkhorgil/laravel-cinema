@extends('layouts.app')

@section('content')
<section class="section">
    <div class="columns">
        <div class="column is-4">
            <form class="" action="{{ route('login') }}" method="post">
                {{ csrf_field() }}
                <!-- <div class="container"> -->
                    <div class="field">
                       <p class="control has-icons-left has-icons-right">
                           <input class="input" type="email" placeholder="И-мейл" name="email" value="{{ old('email') }}" required autofocus>
                           <span class="icon is-small is-left">
                               <i class="fa fa-envelope"></i>
                           </span>
                            <span class="icon is-small is-right">
                              <i class="fa fa-check"></i>
                            </span>
                      </p>
                    </div>
                    <div class="field">
                      <p class="control has-icons-left">
                        <input class="input" type="password" placeholder="Нууц үг" name="password">
                        <span class="icon is-small is-left">
                          <i class="fa fa-lock"></i>
                        </span>
                      </p>
                    </div>
                    <div class="field">
                      <p class="control">
                        <button type="submit" class="button is-success">
                          Нэвтрэх
                        </button>
                      </p>
                    </div>
                <!-- </div> -->
            </form>
        </div>
    </div>
</section>
@endsection
