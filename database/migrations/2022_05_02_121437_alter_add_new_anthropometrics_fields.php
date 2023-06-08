<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterAddNewAnthropometricsFields extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('anthropometrics', function (Blueprint $table) {
            $table->string('resourceId' ,255)->after('comments')->nullable();
            $table->string('motivation', 50)->after('comments')->nullable();
            $table->string('akt_scale', 50)->after('comments')->nullable();
            $table->string('leg_length', 50)->after('comments')->nullable();
            $table->string('shoe_size', 50)->after('comments')->nullable();
            $table->string('foot_size', 50)->after('comments')->nullable();
            $table->string('position', 50)->after('comments')->nullable();
            $table->string('fat', 50)->after('comments')->nullable();
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
