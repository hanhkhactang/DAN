@extends('layout')
@section('content')

@if($errors -> any())
	<div class="alert alert-danger">
		<ul>
			@foreach($errors -> all() as $error)
			<li>{{$error}}</li>
			@endforeach
		</ul>
	</div>
@endif
<form method="POST" action="{{route('insert')}}" enctype="multipart/form-data">
	{{csrf_field()}}
	<div class="form-group">
		<label for="productName">Tên sản phẩm</label>
		<input type="text" name="productName" id="productName" class="form-control">
	</div>
	<div class="form-group">
		<label>Đơn vị tính</label>
		<select class="form-control" name="unit" id="unit">
			<option value="Cái">Cái</option>
			<option value="Bộ">Bộ</option>
			<option value="Chiếc">Chiếc</option>
		</select>
	</div>
	<div class="form-group">
		<label for="price">Đơn giá</label>
		<input type="text" name="price" id="price" class="form-control">
	</div>
	<div class="form-group">
		<label for="productName">Loại sản phẩm</label>
		<select class="form-control" name="categories" id="categories">
			@foreach($category as $c)
			<option value="{{$c -> CategoryId}}">{{$c -> CategoryName}}</option>	
			@endforeach
		</select>
	</div>
	<div class="form-group">
		<label for="img">Hình sản phẩm</label>
		<input type="file" name="fileUpload" id="fileUpload" class="form-control" />
	</div>
	<button type="submit" class="btn btn-info">Thêm</button>
	
</form>
@stop