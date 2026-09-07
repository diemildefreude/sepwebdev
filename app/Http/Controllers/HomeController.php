<?php

namespace App\Http\Controllers;

use App\Models\Post;
use Illuminate\Http\Request;

class HomeController extends Controller
{
    public function index()
    {
        $posts = Posts::orderBy('id', 'desc')->get();
        return view('main', ['posts' => $posts]);
    }
}
