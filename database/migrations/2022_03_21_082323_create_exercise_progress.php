<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateExerciseProgress extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('exercise_progress', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('setup_program_id')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('set',50)->nullable();
            $table->string('rep',50)->nullable();
            $table->string('weight',50)->nullable();
            $table->string('duration')->nullable();
            $table->string('break')->nullable();
            $table->string('distance',50)->nullable();
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('setup_program_id')->references('id')->on('setup_programs');
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
        Schema::dropIfExists('exercise_progress');
    }
}
