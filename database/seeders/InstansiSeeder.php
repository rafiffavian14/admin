<?php

namespace Database\Seeders;

use Illuminate\Database\Seeder;
use Illuminate\Support\Facades\DB;
use App\Models\Instansi;

class InstansiSeeder extends Seeder
{
    /**
     * Run the database seeds.
     *
     * @return void
     */
    public function run()
    {
        DB::table('instansi')->insert([
            
            [
                'name'  => 'BKN',
            ],

            [
                'name'  => 'SI ASN',
            ],

            [
                'name'  => 'KEMENTRIAN',
            ],

            [
                'name'  => 'GUNADARMA',
            ],


           
        ]);
    }
}
