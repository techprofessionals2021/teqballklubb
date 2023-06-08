<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStatsQuestionValues extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stats_question_values', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('stats_question_id')->nullable();
            $table->string('question_no', 50)->nullable()->comment('Ques like Q1,Q2..Q32');
            $table->string('question_value', 50)->nullable()->comment('Ques value');
            $table->timestamps();

            $table->foreign('stats_question_id')->references('id')->on('stats_questions');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('stats_question_values');
    }
}
