<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateSubscriptionTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('my_subscriptions', function (Blueprint $table) {
            $table->id();
            $table->string('program_id',255)->nullable();
            $table->string('group_id',255)->nullable();
            $table->string('price_a_month',255)->nullable();
            $table->string('price_6_month',255)->nullable();
            $table->string('create_by',255)->nullable();
            $table->string('description',255)->nullable();
            $table->softDeletes();
            $table->timestamps();

            $table->foreign('program_id')->references('id')->on('program_setups');
            $table->foreign('group_id')->references('id')->on('groups');
            $table->foreign('create_by')->references('id')->on('users');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('my_subscription');
    }
}
