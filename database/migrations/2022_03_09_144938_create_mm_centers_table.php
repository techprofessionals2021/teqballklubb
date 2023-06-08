<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateMmCentersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('mm_centers', function (Blueprint $table) {
            $table->id();
            $table->string('name',255);
            $table->text('address');
            $table->string('postal_code');
            $table->string('city');
            $table->string('telephone');
            $table->tinyInteger('is_active')->nullable()->default('0');
            $table->string('description')->nullable();
            $table->softDeletes();
            $table->timestamps();

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('mm_centers');
    }
}
