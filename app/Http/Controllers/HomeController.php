<?php
/**
 * Home controller
 *
 * @category  HomeController
 * @package   HomeController
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Http\Requests;
use App\Albums;

/**
 * HomeController
 *
 * @category  Class
 * @package   HomeController
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 *
 * @since 1.0.1
 */
class HomeController extends Controller
{


    /**
     * Show the application dashboard to the home.
     *
     * @return Response
     */
    public function index()
    {
        $albums = Albums::select(['albums.id', 'albums.name', 'albums.created_at'])
            ->orderBy('albums.created_at', 'DESC')
            ->get();
        return view('home.index', compact('albums'));

    }//end index()


}//end class
