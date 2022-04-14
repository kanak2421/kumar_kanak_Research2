<?php

namespace App\Http\Middleware;

use Closure;

class AddAuthorHeaderMiddleware
{
    /**
     * Incoming request on hold
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  \Closure  $next
     * @return mixed
     */
    public function handle($request, Closure $next)
    {
        $response = $next($request);

        $response->header('X-Authored-By: Nicholas Ireland', true);
        $response->header('X-Frame-Options: SAMEORIGIN', true);

        return $response;
    }
}
