<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class DirectoryInitial extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('directory', function (Blueprint $table) {

            $table->bigInteger('did')->autoIncrement();
            $table->bigInteger('_uid')->nullable();
            $table->bigInteger('old_did')->nullable();
            $table->string('name', 250)->nullable();
            $table->string('last_name', 250)->nullable();
            $table->string('email', 250)->nullable();
            $table->string('company_name', 250)->nullable();
            $table->integer('number')->nullable();
            $table->string('sms_address', 255)->nullable();
            $table->string('mms_address', 255)->nullable();
            $table->dateTime('last_processed')->nullable();
            $table->tinyInteger('disabled')->default(0);
            $table->tinyInteger('skipped_lookup')->default(0);
            $table->bigInteger('_gid')->nullable();
            $table->dateTime('created_at_legacy')->nullable();
            $table->tinyInteger('optout_sent')->default(0);
            $table->timestamps();
            $table->index('number');
            $table->index(['name', 'last_name']);

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('directory');
    }
}