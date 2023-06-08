<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateAnthropometricsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('anthropometrics', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('status', 50)->nullable();
            $table->string('date', 50)->nullable();
            $table->string('height', 50)->nullable();
            $table->string('weight', 50)->nullable();
            $table->string('age', 50)->nullable();
            $table->string('week_ant', 50)->nullable();
            $table->string('ant_train', 50)->nullable();
            $table->string('damage_c', 50)->nullable();
            $table->string('damage_nc', 50)->nullable();
            $table->string('note', 50)->nullable();
            $table->string('vurdBorg', 50)->nullable();
            $table->string('VurdFys', 50)->nullable();
            $table->string('jobs', 50)->nullable();
            $table->string('r_reported', 50)->nullable();
            $table->string('internship', 50)->nullable();
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
        Schema::dropIfExists('anthropometrics');
    }
}
