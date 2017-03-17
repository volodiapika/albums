<?php
/**
 * Photos File
 *
 * @category  Photos
 * @package   Photos
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika Ltd (ABN 77 084 670 600)
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Photos
 *
 * Photos model
 *
 * @category  Class
 * @package   Photos
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika Ltd (ABN 77 084 670 600)
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 *
 * @since 1.0.1
 */
class Photos extends Model
{
    /**
     * The Photos deleted at
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * The Photos id
     *
     * @var array
     */
    protected $guarded = ['id'];


    /**
     * Returns a formatted name album's.
     *
     * @return string
     */
    public function name()
    {
        return nl2br($this->name);

    }//end name()


    /**
     * Returns a photo url's.
     *
     * @return string
     */
    public function photourl()
    {
        return nl2br($this->photourl);

    }//end photourl()


    /**
     * Album id
     *
     * @return integer
     */
    public function albumid()
    {
        return $this->belongsTo('App\Albums', 'id');

    }//end albumid()


}//end class
