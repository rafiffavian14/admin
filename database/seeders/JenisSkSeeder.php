<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Jenis_sk;

class JenisSkSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('jenis_sk')->insert([
            
            [
                'name'  => 'satu',
            ],

            [
                'name'  => 'dua',
            ],

            [
                'name'  => 'tiga',
            ],

            [
                'name'  => 'empat',
            ],


           
        ]);
    }
}
