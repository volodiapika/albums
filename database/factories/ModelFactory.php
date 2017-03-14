<?php

/*
|--------------------------------------------------------------------------
| Model Factories
|--------------------------------------------------------------------------
|
| Here you may define all of your model factories. Model factories give
| you a convenient way to create models for testing and seeding your
| database. Just tell the factory how a default model should look.
|
*/

$factory->define(App\Albums::class, function (Faker\Generator $faker) {
    return [
        'name' => $faker->name,
        'photo_id' => $faker->photo_id
    ];
});

$factory->define(App\Photos::class, function (Faker\Generator $faker) {
    return [
    	'name' => $faker->name,
        'photo_url' => $faker->photo_url
    ];
});
