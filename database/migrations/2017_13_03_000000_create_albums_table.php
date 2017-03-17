<?php
/**
 * Create albums table
 *
 * @category  CreateAlbumsTable
 * @package   CreateAlbumsTable
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

/**
 * CreateAlbumsTable
 *
 * @category  Class
 * @package   CreateAlbumsTable
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 *
 * @since 1.0.1
 */
class CreateAlbumsTable extends Migration
{


    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(
            'albums',
            function (Blueprint $table) {
                $table->engine = 'InnoDB';
                $table->increments('id')->unsigned();
                $table->string('name')->unique();
                $table->timestamps();
                $table->softDeletes();
            }
        );

    }//end up()


    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::drop('albums');

    }//end down()


}//end class
