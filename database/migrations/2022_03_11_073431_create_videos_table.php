<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateVideosTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('videos', function (Blueprint $table) {
            $table->id();
            $table->string('name',255);
            $table->string('type');
            $table->unsignedBigInteger('exercise_category_id')->nullable();
            $table->text('video_sd');
            $table->text('video_hd');
            $table->text('description');
            $table->softDeletes();
            $table->timestamps();

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
        Schema::dropIfExists('videos');
    }
}
