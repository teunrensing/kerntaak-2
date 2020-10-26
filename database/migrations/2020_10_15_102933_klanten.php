<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class Klanten extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('klanten', function (Blueprint $table) {
            $table->integer('id')->unsigned();
            $table->primary('id')->autoIncrement();
            $table->string('voornaam');
            $table->string('achternaam');
            $table->string('wachtwoord');
            $table->string('straat');
            $table->string('huisnummer',4);
            $table->string('postcode');
            $table->string('plaats');
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
