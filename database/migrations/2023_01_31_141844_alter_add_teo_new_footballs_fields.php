<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterAddTeoNewFootballsFields extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('footballs', function (Blueprint $table) {
            $table->string('dlbt_non', 50)->after('dlbt')->nullable();
            $table->string('dlbt_dom', 50)->after('dlbt')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('footballs', function (Blueprint $table) {
            //
        });
    }
}
