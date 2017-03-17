<?php
/**
 * DatabaseSeeder
 *
 * @category  DatabaseSeeder
 * @package   DatabaseSeeder
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 */
use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

/**
 * DatabaseSeeder
 *
 * @category  Class
 * @package   DatabaseSeeder
 * @author    Volodia Pika <volodia.pika@gmail.com>
 * @copyright 2006-2017 Volodia Pika
 * @license   GNU General Public License version 1
 * @link      https://bitbucket.org/icyklop/laravel-model-project
 *
 * @since 1.0.1
 */
class DatabaseSeeder extends Seeder
{


    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        Model::unguard();

        $this->call(AlbumsTableSeeder::class);
        $this->command->info('New albums');

        $this->call(PhotosTableSeeder::class);
        $this->command->info('New photos');

        Model::reguard();

    }//end run()


}//end class
