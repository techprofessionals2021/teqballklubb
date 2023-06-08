<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCaseWorkersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('case_workers', function (Blueprint $table) {
            $table->id();
            $table->string('name',255);
            $table->string('telephone');
            $table->string('email')->unique();
            $table->string('organization');
            $table->string('sort');
            $table->unsignedBigInteger('user_id')->nullable();
            $table->tinyInteger('is_active')->nullable()->default('0');
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
        Schema::dropIfExists('case_workers');
    }
}
