<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AlterUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->string('username' ,255)->unique()->after('email')->nullable();
            $table->text('address')->nullable();
            $table->string('postnr' ,255)->nullable();
            $table->string('city' ,255)->nullable();
            $table->date('dob')->nullable();
            $table->string('telephone' ,255)->nullable();
            $table->unsignedBigInteger('profession_id')->nullable();
            $table->unsignedBigInteger('group_id')->nullable();
            $table->unsignedBigInteger('type_id')->nullable();
            $table->string('case_manager_id' ,255)->nullable();
            $table->string('gender' ,255)->nullable();
            $table->integer('level')->nullable();
            $table->string('age' ,255)->nullable();
            $table->integer('cut')->nullable();
            $table->integer('center')->nullable();
            $table->integer('ab_rest_dager')->nullable();
            $table->tinyInteger('is_active')->nullable()->default('0');
            $table->tinyInteger('statistics')->nullable()->default('0');
            $table->tinyInteger('pt_customer')->nullable()->default('0');
            $table->tinyInteger('consent')->nullable()->default('0');
            $table->tinyInteger('utv_adr_info')->nullable()->default('0');
            $table->tinyInteger('self_reg')->nullable()->default('0');
            $table->tinyInteger('aft')->nullable()->default('0');
            $table->text('note')->nullable();
            $table->text('Journal')->nullable();
            $table->softDeletes()->nullable();

            $table->foreign('profession_id')->references('id')->on('professions');
            $table->foreign('group_id')->references('id')->on('groups');
            $table->foreign('type_id')->references('id')->on('exercise_types');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('users', function (Blueprint $table) {
            //
        });
    }
}
