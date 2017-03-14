<?php

use Illuminate\Database\Seeder;
use Faker\Factory as Faker;

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
            \App\Albums::create([
                'name' => $faker->name,
                'created_at' => \Carbon\Carbon::now(),
                'updated_at' => \Carbon\Carbon::now()
            ]);
    	}
    }
}
