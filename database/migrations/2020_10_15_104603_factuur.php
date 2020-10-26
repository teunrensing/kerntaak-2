<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Factuur extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('factuur', function (Blueprint $table) {
            $table->integer('id')->unsigned();
            $table->primary('id')->autoIncrement();
            $table->timestampTz('factuurdatum');
            $table->string('name');
            $table->integer('locatie_id')->unsigned();
            $table->integer('klanten_id')->unsigned();
            $table->timestamps();   
        });
        Schema::table('factuur', function ($table) {
            $table->foreign('locatie_id')->references('id')->on('locatie')->onDelete('cascade');;
            $table->foreign('klanten_id')->references('id')->on('klanten')->onDelete('cascade');;
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
