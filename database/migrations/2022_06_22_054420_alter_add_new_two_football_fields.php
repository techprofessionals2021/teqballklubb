<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterAddNewTwoFootballFields extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('footballs', function (Blueprint $table) {
            $table->string('s_dribble_right', 50)->after('s_dribble')->nullable();
            $table->string('s_dribble_left', 50)->after('s_dribble')->nullable();
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
