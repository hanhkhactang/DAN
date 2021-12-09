<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Category extends Model
{
    use HasFactory;
    public $timestamps = false;
    protected $fillable = ['CategoryId', 'CategoryName'];
    protected $table ="category";
    public function Product()
    {
    	return $this->hasMany(Product::class, "CategoryId", "CategoryId");
    }
}
