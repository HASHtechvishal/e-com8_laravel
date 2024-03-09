<?php

namespace App\Http\Middleware;

use Closure;
use Auth;
use Illuminate\Http\Request;
use Symfony\Component\HttpFoundation\Response;

class admin
{
    /**
     * Handle an incoming request.
     *
     * @param  \Closure(\Illuminate\Http\Request): (\Symfony\Component\HttpFoundation\Response)  $next
     */
    public function handle(Request $request, Closure $next): Response
    {   
        //it use to check password of admin if pass is currect the it show dashboard 
        if (!Auth::guard('admin')->check()) {
            return redirect('/admin/login');
       }
        return $next($request);
    }
}
