<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateManajemenTemplateTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('manajemen_template', function (Blueprint $table) {
            $table->bigIncrements('id');
            $table->unsignedBigInteger('id_instansi');
            $table->string('file');
            $table->unsignedBigInteger('id_jenis_sk');
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
        Schema::dropIfExists('manajemen_template');
    }
}
