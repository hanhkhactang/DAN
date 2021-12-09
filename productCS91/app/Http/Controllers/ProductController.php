<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Validator;
use App\Models\Product;
use App\Models\Category;

class ProductController extends Controller
{
	public function index()
	{
		$product = Product::all();
		return view('product', compact('product'));
	}

	public function getProductDetail($id)
	{
		$prod = Product::where('ProductId', $id)->first();
		return view('productdetail', compact('prod'));

	}

	public function addProduct()
	{
		$category = Category::all();
		return view('addProduct', compact('category'));

	}

	public function inserProduct(Request $request)
	{
		// $message = [
		// 	'productName.required' =>'Bạn phải nhập tên sản phẩm',
		// 	'price.required' =>'Bạn phải nhập giá sản phẩm'
		// ]

		$this->validate(request(),['productName' =>'required']);

		// $control=[
		// 	'productName' => 'required',
		// 	'price' => 'required'

		// ]

		// $validator = Validator::make($request ->all(), [
		// 	'productName' => 'required',
		// 	'price' => 'required',
		// ], $message)->validate();

		$filename = "";
		if($request ->file('fileUpload')->isValid())
		{
			$filename = $request->fileUpload->getClientOriginalName();
			$request ->fileUpload->move('images/', $filename);
		}

		$product = Product::create([
			'ProductName' => $request->productName,
			'Price' => $request->price,
			'Unit' => $request->unit,
			'CategoryId'=>$request->categories,
			'Img'=> $filename
		]);

		$product = Product::all();
		return view('product', compact('product'));

	}
}
