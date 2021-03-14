<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Jenis_pertek;

class JenisPertekSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('jenis_pertek')->insert([

        	[
        		'name' => 'Pindah Instansi',
        	],

        	[
        		'name' => 'Peremajaan',
        	],

        	[
        		'name' => 'Pensiun',
        	],


        	[
        		'name' => 'Pengadaan',
        	],

        	[
        		'name' => 'Kenaikan Pangkat',
        	],


        	[
        		'name' => 'JF Utama',
        	],


        ]);
    }
}
