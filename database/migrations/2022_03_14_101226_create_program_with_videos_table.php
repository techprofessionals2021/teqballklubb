<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateProgramWithVideosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('program_with_videos', function (Blueprint $table) {
            $table->id();
            $table->string('name',255);
            $table->unsignedBigInteger('video_id')->nullable();
            $table->unsignedBigInteger('exercise_category_id')->nullable();
            $table->string('load',255);
            $table->string('sort',255);
            $table->tinyInteger('is_active')->nullable()->default('0');
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('video_id')->references('id')->on('videos');
            $table->foreign('exercise_category_id')->references('id')->on('exercise_categories');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('program_with_videos');
    }
}
