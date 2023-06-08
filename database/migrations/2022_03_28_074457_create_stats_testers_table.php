<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStatsTestersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stats_testers', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('status', 50)->nullable();
            $table->string('step_test_time', 50)->nullable();
            $table->string('step_test_count', 50)->nullable();
            $table->string('bicycle_time', 50)->nullable();
            $table->string('bicycle_dist', 50)->nullable();
            $table->string('cooperes_dist', 50)->nullable();
            $table->string('cooperes_count', 50)->nullable();
            $table->string('cooperes_time', 50)->nullable();
            $table->string('funk_strength', 50)->nullable();
            $table->string('comments', 50)->nullable();

            $table->softDeletes();
            $table->timestamps();

            $table->foreign('user_id')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stats_testers');
    }
}
