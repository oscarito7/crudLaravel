<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use App\Models\User;
use App\Models\Project;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        User::factory()->times(1)->create([
            "name" => "oscarTorress",
            "email" => "oscatorres22@gmail.com", 
            "password" =>bcrypt("password")
        ]);

        Project::factory()->times(20)->create();
    }
}
