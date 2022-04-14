<?php

namespace App\Http\Controllers;

class HomeController extends Controller
{
    public function index()
    {
        return response()->json([
            'app' => 'Fake RokuApp',
            'author' => 'Kanak Kumar',
            'email' => 'hi@designwithkanak.com'
        ]);
    }
}