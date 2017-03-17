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
$factory->define(
    App\Albums::class,
    function (Faker\Generator $faker) {
        return [
                'name'    => $faker->name,
                'photoid' => $faker->photoid,
               ];
    }
);

$factory->define(
    App\Photos::class,
    function (Faker\Generator $faker) {
        return [
                'name'     => $faker->name,
                'photourl' => $faker->photourl,
               ];
    }
);
