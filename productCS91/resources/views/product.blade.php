@extends('layout')
@section('content')

<div class="container-fluid">
	<div class="row">
		@foreach($product as $p)
		<div class="col-sm-3 col-md-3 col-lg-3" >
			<a href="{{route('proddetail', ['ProductId' =>$p ->ProductId])}}">{{$p->ProductName}}</a> <br>
			<a href="{{route('proddetail', ['ProductId' =>$p ->ProductId])}}">
				<img src="images/{{$p->Img}}" height="50px">
			</a> <br>
			@php echo number_format($p->Price,0); @endphp
		</div>
		@endforeach
	</div>
</div>
@stop