<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSetupProgramsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('setup_programs', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('register_program_id')->nullable();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->unsignedBigInteger('program_with_video_id')->nullable();
            $table->string('set',50)->nullable();
            $table->string('rep',50)->nullable();
            $table->string('duration')->nullable();
            $table->string('break')->nullable();
            $table->string('distance',50)->nullable();
            $table->string('exercise_no',50)->nullable();
            $table->string('sort',50)->nullable();
            $table->text('description')->nullable();
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('register_program_id')->references('id')->on('program_setups');
            $table->foreign('user_id')->references('id')->on('users');
            $table->foreign('program_with_video_id')->references('id')->on('program_with_videos');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('setup_programs');
    }
}
