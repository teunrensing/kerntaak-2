<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Factuurregel extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('factuurregel', function (Blueprint $table) {
            $table->integer('factuur_id')->unsigned();
            $table->integer('artikel_id')->unsigned();
            $table->integer('Aantal');
            $table->timestamps();
        });
        Schema::table('factuurregel', function ($table) {
            $table->foreign('factuur_id')->references('id')->on('factuur')->onDelete('cascade');;
            $table->foreign('artikel_id')->references('id')->on('artikels')->onDelete('cascade');;
        });   
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        //
    }
}
