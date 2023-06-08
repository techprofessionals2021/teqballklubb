<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterAddNewFootballsFieldsAgain extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('footballs', function (Blueprint $table) {
            $table->dropColumn('1RMBenk');
            $table->dropColumn('1RMSquat');
            $table->dropColumn('1RMDead');

            $table->string('RMBenk1', 50)->after('comments')->nullable();
            $table->string('RMSquat1', 50)->after('comments')->nullable();
            $table->string('RMDead1', 50)->after('comments')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('footballs', function (Blueprint $table) {
            //
        });
    }
}
