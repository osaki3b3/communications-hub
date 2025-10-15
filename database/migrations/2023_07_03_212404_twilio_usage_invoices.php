<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TwilioUsageInvoices extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('twilio_usage_invoices', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('uid')->nullable(false);
            $table->dateTime('period_start')->nullable(false);
            $table->dateTime('period_end')->nullable(false);
            $table->decimal('amount', $precision = 11, $scale = 2)->nullable(false)->default('0.00');
            $table->integer('minutes_used')->nullable(false);
            $table->integer('message_count')->default(0);
            $table->tinyInteger('status')->default(0)->comment('0 = blank, 1 = unpaid, 2 = paid');
            $table->dateTime('entry_date')->nullable(false);
            $table->dateTime('paid_date')->nullable();
            $table->integer('billing_transaction_id')->nullable(false)->default(0);
            $table->tinyInteger('disputed')->default(0);
            $table->decimal('recordings_amount', $precision = 11, $scale = 2)->nullable();
            $table->decimal('storage_amount', $precision = 11, $scale = 2)->nullable();
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
        Schema::dropIfExists('twilio_usage_invoices');
    }
}