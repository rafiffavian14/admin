<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;

class DatabaseSeeder extends Seeder
{
    /**
     * Seed the application's database.
     *
     * @return void
     */
    public function run()
    {
        // \App\Models\Manajemen_layanan::factory(100)->create();
        $this->call(InstansiSeeder::class);
        $this->call(JenisSkSeeder::class);
    }
}
