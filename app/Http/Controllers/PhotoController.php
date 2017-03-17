<?php
/**
 * Photo controller
 *
 * @category  PhotoController
 * @package   PhotoController
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Albums;
use App\Photos;

/**
 * PhotoController
 *
 * @category  Class
 * @package   PhotoController
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 *
 * @since 1.0.1
 */
class PhotoController extends Controller
{


    /**
     * Show the application dashboard to the photo.
     *
     * @param int $id an integer photo
     *
     * @return Response
     */
    public function show($id = 0)
    {
        $album = Albums::join('photos', 'photos.albumid', '=', 'albums.id')
            ->select(['albums.id', 'albums.name', 'albums.created_at'])
            ->where('photos.id', '=', $id)
            ->limit(1)
            ->first();

        if ($album === null)
            return redirect()->action('HomeController@index');

        $photo = Photos::select(['photos.id', 'photos.name', 'photos.photourl', 'photos.created_at'])
            ->where('photos.id', '=', $id)
            ->first();

        if ($photo === null)
            return redirect()->action('HomeController@index');

        return view('photo.show', compact('photo', 'album'));

    }//end show()


    /**
     * Show the application dashboard to the photo's.
     *
     * @param int $id an integer photo
     *
     * @return Response
     */
    public function list($id = 0)
    {
        $album = Albums::select(['albums.id', 'albums.name', 'albums.created_at'])
            ->where('albums.id', '=', $id)
            ->first();

        if ($album === null)
            App::abort(404);

        $photos = Photos::select(['photos.id', 'photos.name', 'photos.photourl', 'photos.created_at'])
            ->where('photos.albumid', '=', $id)
            ->orderBy('photos.created_at', 'DESC')
            ->get();

        return view('photo.list', compact('photos', 'album'));

    }//end list()


    /**
     * Show the application dashboard remove photo's.
     *
     * @param int $id an integer photo
     *
     * @return Response
     */
    public function remove($id = 0)
    {
        $album = Albums::select(['albums.id', 'albums.name', 'albums.created_at'])
            ->where('albums.id', '=', $id)
            ->first();

        if ($album === null)
            return response()->json(array('success' => 0));

        Albums::where('id', $id)->delete();

        return response()->json(array('success' => 1));

    }//end remove()


    /**
     * Show the application dashboard remove photo.
     *
     * @param int $id an integer photo
     *
     * @return Response
     */
    public function removephoto($id = 0)
    {
        $photo = Photos::select(['photos.id', 'photos.name', 'photos.created_at'])
            ->where('photos.id', '=', $id)
            ->first();

        if ($photo === null)
            return response()->json(array('success' => 0));

        Photos::where('id', $id)->delete();

        return response()->json(array('success' => 1));

    }//end removephoto()


    /**
     * Show the application dashboard add photo's.
     *
     * @param Request $request an form photo
     *
     * @return Response
     */
    public function add(Request $request)
    {
        $name = $request->input('name');

        $albums       = new Albums;
        $albums->name = $name;
        $albums->save();

        return response()->json(array('success' => 1));

    }//end add()


    /**
     * Show the application dashboard add url photo's.
     *
     * @param Request $request an form photo
     *
     * @return Response
     */
    public function addurl(Request $request)
    {
        $name = $request->input('name');

        $url = $request->input('url');

        $id = $request->input('id');

        $photos = new Photos;

        $photos->albumid  = $id;
        $photos->name     = $name;
        $photos->photourl = $url;
        $photos->save();

        return response()->json(array('success' => 1));

    }//end addurl()


}//end class
