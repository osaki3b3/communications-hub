<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TwilioCostsPerPhone extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('twilio_costs_per_phone', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('twid')->nullable(false);
            $table->bigInteger('uid')->nullable(false);
            $table->bigInteger('gvid')->nullable(false);
            $table->decimal('price', $precision = 11, $scale = 2)->nullable(false);
            $table->tinyInteger('charged')->nullable(false)->default(0);
            $table->dateTime('last_period_start')->nullable();
            $table->dateTime('last_period_stop')->nullable();
            $table->integer('period_day')->nullable();
            $table->integer('period_month')->nullable();
            $table->integer('period_year')->nullable();
            $table->dateTime('last_processed')->nullable();
            $table->integer('cred_id')->nullable(false)->default(0);
            $table->integer('duration')->nullable();
            $table->integer('invoice_id')->nullable(false)->default(0);
            $table->bigInteger('messages_sent')->nullable();
            $table->decimal('messaging_cost', $precision = 11, $scale = 2)->nullable();
            $table->integer('duration_outbound')->nullable();
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
        Schema::dropIfExists('twilio_costs_per_phone');
    }
}