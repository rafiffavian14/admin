<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UpdateGambarToPhotoFieldTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('manajemen_layanan', function (Blueprint $table) {

             $table->renameColumn('gambar', 'photo');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('manajemen_layanan', function (Blueprint $table) {

             $table->renameColumn('photo', 'gambar');
        });
    }
}
