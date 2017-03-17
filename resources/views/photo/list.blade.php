
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
    <form id="photoForm">
      <input type="hidden" id="id" name="id" value="{!! $album->id !!}">
      <div class="form-group">
        <label for="name">Name photo:</label>
        <input type="name" class="form-control" id="name" name="name">
      </div>
      <div class="form-group">
        <label for="url">Url photo:</label>
        <input type="url" class="form-control" id="url" name="url">
      </div>
      <button type="button" class="btn btn-default" id="submiturl">Submit</button>
    </form>
  </div>
</div>

<div class="jumbotron">
  <div class="container text-center">
    <h1>Photos</h1>      
    <p>List..</p>
  </div>
</div>
  
<div class="container-fluid bg-3 text-center">    
  <h3>Album <b>{!! $album->name !!}</b>, in album <b>{!! count($photos) !!}</b> photo's.</h3><br>
  <div class="row">
    @if(count($photos)>0)
      @foreach ($photos as $photo)
      <div class="col-sm-3">
        <p>{!! $photo->name !!}</p>
        <a href="/photo/show/{!! $photo->id !!}">
          <img src="{!! $photo->photourl !!}" alt="{!! $photo->name !!}" class="img-responsive" style="width:250px;">
        </a>
      </div>
      @endforeach
    @endif
  </div>
</div><br>

</body>
</html>
@endsection
