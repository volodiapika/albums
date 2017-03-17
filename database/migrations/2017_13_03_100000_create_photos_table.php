<?php
/**
 * Create photos table
 *
 * @category  CreatePhotosTable
 * @package   CreatePhotosTable
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Database\Migrations\Migration;

/**
 * CreatePhotosTable
 *
 * @category  Class
 * @package   CreatePhotosTable
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 *
 * @since 1.0.1
 */
class CreatePhotosTable extends Migration
{


    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create(
            'photos',
            function (Blueprint $table) {
                $table->engine = 'InnoDB';
                $table->increments('id')->unsigned();
                $table->string('name');
                $table->string('photourl');
                $table->unsignedInteger('albumid')->nullable();
                $table->foreign('albumid')->references('id')->on('albums')->onDelete('cascade');
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
        Schema::drop('photos');

    }//end down()


}//end class
