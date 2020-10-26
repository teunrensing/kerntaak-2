<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Locatie extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('locatie', function (Blueprint $table) {
            $table->integer('id')->unsigned();
            $table->primary('id')->autoIncrement();
            $table->string('straatnaam');
            $table->string('huisnummer',4);
            $table->string('postcode');
            $table->string('plaats');
            $table->string('telefoonnummer',12);
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
        //
    }
}
