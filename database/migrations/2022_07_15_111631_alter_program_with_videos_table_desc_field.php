<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterProgramWithVideosTableDescField extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('program_with_videos', function (Blueprint $table) {
            $table->dropColumn('description');
        });
        Schema::table('program_with_videos', function (Blueprint $table) {
            $table->longText('description')->after('load')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('program_with_videos', function (Blueprint $table) {
            //
        });
    }
}
