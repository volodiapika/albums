<?php
/**
 * Albums File
 *
 * @category  Albums
 * @package   Albums
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika Ltd (ABN 77 084 670 600)
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
namespace App;

use Illuminate\Database\Eloquent\Model;

/**
 * Albums Class
 *
 * Albums model
 *
 * @category  Class
 * @package   Albums
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika Ltd (ABN 77 084 670 600)
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 *
 * @since 1.0.1
 */
class Albums extends Model
{
    /**
     * The albums deleted at
     *
     * @var array
     */
    protected $dates = ['deleted_at'];

    /**
     * The albums id
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


}//end class
