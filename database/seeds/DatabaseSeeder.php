<?php

use Illuminate\Database\Seeder;
use Illuminate\Database\Eloquent\Model;

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
    }
}
