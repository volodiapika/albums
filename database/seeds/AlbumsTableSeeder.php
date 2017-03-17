<?php
/**
 * Albums Table Seeder
 *
 * @category  AlbumsTableSeeder
 * @package   AlbumsTableSeeder
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

/**
 * AlbumsTableSeeder
 *
 * @category  Class
 * @package   AlbumsTableSeeder
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 *
 * @since 1.0.1
 */
class AlbumsTableSeeder extends Seeder
{


    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('albums')->delete();
        $faker = Faker::create();
        for ($i = 0; $i < 4; $i++) {
            \App\Albums::create(['name' => $faker->name, 'created_at' => \Carbon\Carbon::now(), 'updated_at' => \Carbon\Carbon::now()]);
        }

    }//end run()


}//end class
