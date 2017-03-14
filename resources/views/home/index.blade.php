
@extends('layouts.default')

@section('content')
<body>

<div class="jumbotron">
  <div class="container text-center">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        @if(count($albums)>0)
          @foreach ($albums as $album)
            <li class="photo-{!! $album->id !!}">
              <a href="/photo/list/{!! $album->id !!}">
                {!! $album->name !!}
              </a>
              <a href="#" data-id="{!! $album->id !!}" class="remove">
                <i class="glyphicon glyphicon-remove">Remove</i>
              </a>
            </li>
          @endforeach
        @endif
      </ul>
    </div>
  </div>
</nav>

</div>
</div>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Albums</h1>      
    <p>List...</p>
  </div>
</div>

<div class="jumbotron">
  <div class="container text-center">
    <form id="photoForm">
      <div class="form-group">
        <label for="name">Name album:</label>
        <input type="name" class="form-control" id="name" name="name">
      </div>
      <button type="button" class="btn btn-default" id="submit">Submit</button>
    </form>
  </div>
</div>

</body>
</html>
@endsection
