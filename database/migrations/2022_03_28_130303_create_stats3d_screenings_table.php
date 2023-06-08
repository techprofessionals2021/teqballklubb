<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateStats3dScreeningsTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('stats3d_screenings', function (Blueprint $table) {
            $table->id();
            $table->unsignedBigInteger('user_id')->nullable();
            $table->string('status', 50)->nullable();

            $table->string('fpi1h', 50)->nullable();
            $table->string('fpi1v', 50)->nullable();
            $table->string('fpi2h', 50)->nullable();
            $table->string('fpi2v', 50)->nullable();
            $table->string('fpi3h', 50)->nullable();
            $table->string('fpi3v', 50)->nullable();
            $table->string('fpi4h', 50)->nullable();
            $table->string('fpi4v', 50)->nullable();
            $table->string('fpi5h', 50)->nullable();
            $table->string('fpi5v', 50)->nullable();
            $table->string('fpi6h', 50)->nullable();
            $table->string('fpi6v', 50)->nullable();
            $table->string('irh', 50)->nullable();
            $table->string('irv', 50)->nullable();
            $table->string('erh', 50)->nullable();
            $table->string('erv', 50)->nullable();
            $table->string('addh', 50)->nullable();
            $table->string('addv', 50)->nullable();
            $table->string('abdh', 50)->nullable();
            $table->string('abdv', 50)->nullable();
            $table->string('eksh', 50)->nullable();
            $table->string('eksv', 50)->nullable();
            $table->string('flekh', 50)->nullable();
            $table->string('flekv', 50)->nullable();
            $table->string('rotbh', 50)->nullable();
            $table->string('rotbv', 50)->nullable();
            $table->string('latbh', 50)->nullable();
            $table->string('latbv', 50)->nullable();

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
        Schema::dropIfExists('stats3d_screenings');
    }
}
