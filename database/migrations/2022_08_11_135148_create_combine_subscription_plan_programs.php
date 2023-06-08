<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateCombineSubscriptionPlanPrograms extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('combine_subscription_plan_programs', function (Blueprint $table) {
            $table->id();
            $table->string('user_id')->nullable();
            $table->string('plan_id')->nullable();
            $table->string('subscription_id')->nullable();
            $table->string('program_id')->nullable();
            $table->string('is_a_month')->nullable();
            $table->string('is_6_month')->nullable();
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
        Schema::dropIfExists('combine_subscription_plan_programs');
    }
}
