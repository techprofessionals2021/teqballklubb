<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterMySubscriptionsAddFildes extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('my_subscriptions', function (Blueprint $table) {
            $table->string('slug')->unique()->after('price_6_month')->nullable();
            $table->string('stripe_plan')->after('price_6_month')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('my_subscriptions', function (Blueprint $table) {
            //
        });
    }
}
