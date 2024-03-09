<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use Illuminate\Foundation\Auth\User as Authenticatable;

class admin extends Authenticatable
{
    use HasFactory;
    //this all process use only for admin login 
    protected $guard = 'admin';
    protected $fillable = ['name','type','contact','email','password','image','status','create_at','updated_at',];
    protected $hidden = ['password','remember_token',]; 
    //add guard for admin at auth.php
}
