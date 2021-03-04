<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateManajemenTteTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('manajemen_tte', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->string('posisi')->nullable();
            $table->string('spesimen')->nullable();
            $table->string('nik')->nullable();
            $table->string('nama')->nullable();
            $table->string('nip')->nullable();
            $table->timestamps();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('manajemen_tte');
    }
}
