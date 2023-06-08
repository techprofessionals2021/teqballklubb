<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateRegisterActivitiesTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('register_activities', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('recordDate',50)->nullable();
            $table->bigInteger('duration')->nullable();
            $table->string('exerciseName',250)->nullable();
            $table->bigInteger('intensity')->nullable();
            $table->bigInteger('injuryPain')->nullable();
            $table->bigInteger('recovery')->nullable();
            $table->bigInteger('sleep')->nullable();
            $table->bigInteger('coach_id')->nullable();
            $table->text('comment')->nullable();
            $table->text('note')->nullable();
            $table->softDeletes()->nullable();
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
        Schema::dropIfExists('register_activities');
    }
}
