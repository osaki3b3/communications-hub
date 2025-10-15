<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddFieldsToDirectory extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('directory', function (Blueprint $table) {
            //
            $table->bigInteger('account_id')->nullable();
            $table->bigInteger('organization_id')->nullable();
            $table->string('address', 150)->nullable();
            $table->string('city', 50)->nullable();
            $table->string('region', 50)->nullable();
            $table->string('country', 10)->nullable();
            $table->string('postal_code', 25)->nullable();

            /* $table->id();
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
            $table->timestamps(); */

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::table('directory', function (Blueprint $table) {
            //
            $table->dropColumn('organization_id');
            $table->dropColumn('account_id');
            $table->dropColumn('address');
            $table->dropColumn('city');
            $table->dropColumn('region');
            $table->dropColumn('country');
            $table->dropColumn('postal_code');

        });
    }
}

/* 
  `account_id` int(11) NOT NULL,
  `organization_id` int(11) DEFAULT NULL,
  `first_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `last_name` varchar(25) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `phone` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `address` varchar(150) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `city` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `region` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `country` varchar(2) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `postal_code` varchar(25) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
*/
