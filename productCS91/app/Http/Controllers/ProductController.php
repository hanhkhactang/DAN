<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Product;

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
}
