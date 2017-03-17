
@extends('layouts.default')

@section('content')
<body>

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" href="/">Albums</a>
    </div>
  </div>
</nav>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Photo</h1>      
    <p>Show..</p>
  </div>
</div>

<div class="jumbotron">
  <div class="container text-center">
    <a href="#" data-id="{!! $photo->id !!}" class="removephoto">
      <i class="glyphicon glyphicon-remove">Remove</i>
    </a>
  </div>
</div>

<div class="container-fluid bg-3 text-center">    
  <h3>Album <b>{!! $album->name !!}</b></h3><br>
  <div class="row">
    <p>{!! $photo->name !!}</p>
    <img src="{!! $photo->photourl !!}" alt="{!! $photo->name !!}" class="img-responsive" style="width:100%"> 
  </div>
</div><br>

</body>
</html>
@endsection
