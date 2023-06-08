<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterAddNewTwoAnthropometricsFields extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('anthropometrics', function (Blueprint $table) {
            $table->string('s_dribble_left', 50)->after('resourceId')->nullable();
            $table->string('s_dribble_right', 50)->after('resourceId')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('anthropometrics', function (Blueprint $table) {
            //
        });
    }
}
