<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterAddNewFootballsFields extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('footballs', function (Blueprint $table) {
            $table->string('dlbt', 50)->after('comments')->nullable();
            $table->string('lb_velocity', 50)->after('comments')->nullable();
            $table->string('s180', 50)->after('comments')->nullable();
            $table->string('hrslj', 50)->after('comments')->nullable();
            $table->string('hlslj', 50)->after('comments')->nullable();
            $table->string('speed_10m', 50)->after('comments')->nullable();
            $table->string('speed_20m', 50)->after('comments')->nullable();
            $table->string('speed_30m', 50)->after('comments')->nullable();
            $table->string('speed_40m', 50)->after('comments')->nullable();
            $table->string('1RMBenk', 50)->after('comments')->nullable();
            $table->string('1RMSquat', 50)->after('comments')->nullable();
            $table->string('1RMDead', 50)->after('comments')->nullable();
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
