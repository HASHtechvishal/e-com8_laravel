<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Banner extends Model
{
    use HasFactory;
    //use static function so that we cn use this function anyware
    public static function getBanner(){//call this function in front layout
    	//get banner
    	$get_banners = Banner::where('status',1)->get()->toArray();
    	//dd($get_banners); die;
    	return $get_banners;
    }
}
