<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateOrdersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('orders', function (Blueprint $table) {
            $table->id();
            $table->string('subscription_id')->nullable();
            $table->string('user_id')->nullable();
            $table->string('price')->nullable();
            $table->tinyInteger('is_a_month')->nullable();
            $table->tinyInteger('is_6_month')->nullable();
            $table->dateTime('start_time')->nullable();
            $table->dateTime('end_time')->nullable();
            $table->tinyInteger('is_currently_active')->default(1)->nullable();
            $table->tinyInteger('is_expired')->default(0)->nullable();
            $table->tinyInteger('is_cancel')->default(0)->nullable();
            $table->text('paymentId')->nullable();
            $table->text('response')->nullable();
            $table->timestamps();
            $table->softDeletes();

            $table->foreign('subscription_id')->references('id')->on('my_subscriptions');
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
        Schema::dropIfExists('orders');
    }
}
