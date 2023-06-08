<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateFootballsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('footballs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('status', 50)->nullable();
            $table->string('date', 50)->nullable();
            $table->string('yoyo_test', 50)->nullable();
            $table->string('rm_squat', 50)->nullable();
            $table->string('lb_pass', 50)->nullable();
            $table->string('lb_shoot', 50)->nullable();
            $table->string('lb_point', 50)->nullable();
            $table->string('s_dribble', 50)->nullable();
            $table->string('turn', 50)->nullable();
            $table->string('bench_press', 50)->nullable();
            $table->string('markl_1RM', 50)->nullable();
            $table->string('vertXXX', 50)->nullable();
            $table->string('vertRXX', 50)->nullable();
            $table->string('vertLLX', 50)->nullable();
            $table->string('hoXXX', 50)->nullable();
            $table->string('right', 50)->nullable();
            $table->string('left', 50)->nullable();
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
        Schema::dropIfExists('footballs');
    }
}
