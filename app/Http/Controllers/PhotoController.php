<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Albums;
use App\Photos;
use App;
use DB;

class PhotoController extends Controller
{

    /**
     * Show the application dashboard to the photo.
     *
     * @return Response
     */
    public function show($id = 0)
    {
        $album = Albums::join('photos', 'photos.album_id', '=', 'albums.id')
        ->select(
            array(
                'albums.id',
                'albums.name',
                'albums.created_at'
            )
        )
        ->where('photos.id', '=', $id)
        ->limit(1)
        ->first();
        
        if (empty($album))
            return redirect()->action('HomeController@index');
        
        $photo = Photos::select(
            array(
                'photos.id',
                'photos.name',
                'photos.photo_url',
                'photos.created_at'
            )
        )
        ->where('photos.id', '=', $id)
        ->first();

        if (empty($photo))
            return redirect()->action('HomeController@index');
        
        return view('photo.show', compact('photo', 'album'));
    }

    /**
     * Show the application dashboard to the photo's.
     *
     * @return Response
     */
    public function list($id = 0)
    {
        $album = Albums::select(
            array(
            'albums.id',
            'albums.name',
            'albums.created_at'
            )
        )
        ->where('albums.id', '=', $id)
        ->first();

        if (empty($album))
            App::abort(404);

        $photos = Photos::select(
            array(
            'photos.id',
            'photos.name',
            'photos.photo_url',
            'photos.created_at'
            )
        )
        ->where('photos.album_id', '=', $id)
        ->orderBy('photos.created_at', 'DESC')
        ->get();

        return view('photo.list', compact('photos', 'album'));
    }

    /**
     * Show the application dashboard remove photo's.
     *
     * @return Response
     */
    public function remove($id = 0)
    {
        $album = Albums::select(
            array(
                'albums.id',
                'albums.name',
                'albums.created_at'
            )
        )
        ->where('albums.id', '=', $id)
        ->first();

        if (empty($album))
            return response()->json(array('success' => 0));

        DB::table('albums')->where('id', $id)->delete();

        return response()->json(array('success' => 1));
    }

    /**
     * Show the application dashboard remove photo.
     *
     * @return Response
     */
    public function removephoto($id = 0)
    {
        $photo = Photos::select(
            array(
                'photos.id',
                'photos.name',
                'photos.created_at'
            )
        )
        ->where('photos.id', '=', $id)
        ->first();

        if (empty($photo))
            return response()->json(array('success' => 0));

        DB::table('photos')->where('id', $id)->delete();

        return response()->json(array('success' => 1));
    }

    /**
     * Show the application dashboard add photo's.
     *
     * @return Response
     */
    public function add(Request $request)
    {
        $name = $request->input('name');

        $albums = new Albums;
        $albums->name = $name;
        $albums->save();

        return response()->json(array('success' => 1));
    }

    /**
     * Show the application dashboard add url photo's.
     *
     * @return Response
     */
    public function addurl(Request $request)
    {
        $name = $request->input('name');
        $url = $request->input('url');
        $id = $request->input('id');

        $photos = new Photos;
        $photos->album_id = $id;
        $photos->name = $name;
        $photos->photo_url = $url;
        $photos->save();

        return response()->json(array('success' => 1));
    }

}
