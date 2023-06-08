<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterResourceCoachLableShowTimeAsReminderNote extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('events', function (Blueprint $table) {
            $table->string('resourceId' ,255)->after('data')->nullable();
            $table->string('coachName' ,255)->after('data')->nullable();
            $table->string('label' ,255)->after('data')->nullable();
            $table->string('showTimeAs' ,255)->after('data')->nullable();
            $table->string('reminder' ,255)->after('data')->nullable();
            $table->text('note')->after('data')->nullable();
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('events', function (Blueprint $table) {
            //
        });
    }
}
