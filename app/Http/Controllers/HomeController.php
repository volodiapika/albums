<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Albums;

class HomeController extends Controller
{

    /**
     * Show the application dashboard to the home.
     *
     * @return Response
     */
    public function index()
    {
        $albums = Albums::select(
            array(
                'albums.id',
                'albums.name',
                'albums.created_at'
            )
        )
        ->orderBy('albums.created_at', 'DESC')
        ->get();
        
        return view('home.index', compact('albums'));
    }

}
