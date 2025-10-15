<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class AddUserFieldsToUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::table('users', function (Blueprint $table) {
            $table->bigInteger('uid')->default(NULL);
            $table->string('fname', 255);
            $table->string('lfname', 255);
            $table->string('company', 255);
            $table->string('package', 255);
            $table->dateTime('legacy_created', $precision = 0)->nullable();
            $table->tinyInteger('active')->default('1');
            $table->tinyInteger('adminlevel')->default('0');
            $table->string('stripe_billing_id', 255);
            $table->string('phone', 255);
            $table->string('sms_address', 255);
            $table->string('mms_address', 255);
            $table->dateTime('last_processed', $precision = 0)->nullable();
            $table->integer('additional_phones')->default('1');
            $table->text('account_setup_notes')->default(NULL);
            $table->tinyInteger('test_stripe')->default('0');
            $table->tinyInteger('isConfigured')->default('0');
            $table->string('website', 255);
            $table->tinyInteger('affid')->default('1');
            $table->string('stripe_status', 25);
            $table->string('street', 255);
            $table->string('city', 255);
            $table->string('state', 255);
            $table->string('zip', 25);
            $table->integer('parent_uid')->default('0');
            $table->tinyInteger('terms_agreed')->default('0');
            $table->tinyInteger('card_declined')->default('0');
            $table->dateTime('declined_date', $precision = 0)->nullable();
            $table->string('ip_address_plan_upgrade', 100);
            $table->string('ip_address_customer_creation', 100);
            $table->string('user_api', 255)->default(NULL);
            $table->string('token_api', 255)->default(NULL);
            $table->tinyInteger('directory_processed')->default('0');
            $table->string('promo_code', 20)->default(NULL);
            $table->tinyInteger('a2p_charged')->default('0');

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
            $table->dropColumn('uid');
            $table->dropColumn('fname');
            $table->dropColumn('lfname');
            $table->dropColumn('company');
            $table->dropColumn('package');
            $table->dropColumn('legacy_created');
            $table->dropColumn('active');
            $table->dropColumn('adminlevel');
            $table->dropColumn('stripe_billing_id');
            $table->dropColumn('phone');
            $table->dropColumn('sms_address');
            $table->dropColumn('mms_address');
            $table->dropColumn('last_processed');
            $table->dropColumn('additional_phones');
            $table->dropColumn('account_setup_notes');
            $table->dropColumn('test_stripe');
            $table->dropColumn('isConfigured');
            $table->dropColumn('website');
            $table->dropColumn('affid');
            $table->dropColumn('stripe_status');
            $table->dropColumn('street');
            $table->dropColumn('city');
            $table->dropColumn('state');
            $table->dropColumn('zip');
            $table->dropColumn('parent_uid');
            $table->dropColumn('terms_agreed');
            $table->dropColumn('card_declined');
            $table->dropColumn('declined_date');
            $table->dropColumn('ip_address_plan_upgrade');
            $table->dropColumn('ip_address_customer_creation');
            $table->dropColumn('user_api');
            $table->dropColumn('token_api');
            $table->dropColumn('directory_processed');
            $table->dropColumn('promo_code');
            $table->dropColumn('a2p_charged');
        });
    }
}

/* 
`uid` int(11) NOT NULL AUTO_INCREMENT,
`fname` varchar(255) DEFAULT NULL,
`lname` varchar(255) DEFAULT NULL,
`company` varchar(255) DEFAULT NULL,
`email` varchar(255) NOT NULL,
`pass` varchar(255) DEFAULT NULL,
`created` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
`package` varchar(50) DEFAULT NULL,
`active` tinyint(1) DEFAULT NULL,
`lastbilled` timestamp NULL DEFAULT NULL,
`adminlevel` tinyint(4) NOT NULL DEFAULT '0',
`promocode` varchar(255) DEFAULT NULL COMMENT 'Used to save a text based promo code',
`stripe_billing_id` varchar(255) DEFAULT NULL,
`phone` varchar(255) DEFAULT NULL,
`sms_address` varchar(255) DEFAULT NULL,
`mms_address` varchar(255) DEFAULT NULL,
`last_processed` datetime DEFAULT NULL,
`additional_phones` int(11) NOT NULL DEFAULT '0',
`account_setup_notes` text,
`test_stripe` int(11) NOT NULL DEFAULT '0',
`isConfigured` int(11) NOT NULL DEFAULT '0',
`website` varchar(255) DEFAULT NULL,
`affid` int(11) NOT NULL DEFAULT '1',
`stripe_status` varchar(25) NOT NULL DEFAULT 'active',
`street` varchar(200) DEFAULT NULL,
`city` varchar(100) DEFAULT NULL,
`state` varchar(20) DEFAULT NULL,
`zip` varchar(20) DEFAULT NULL,
`parent_uid` int(11) NOT NULL DEFAULT '0',
`terms_agreed` int(11) DEFAULT '0',
`card_declined` int(11) NOT NULL DEFAULT '0',
`declined_date` datetime DEFAULT NULL,
`ip_address_plan_upgrade` varchar(100) DEFAULT NULL,
`ip_address_customer_creation` varchar(100) DEFAULT NULL,
`user_api` varchar(255) DEFAULT NULL,
`token_api` varchar(255) DEFAULT NULL,
`directory_processed` int(1) unsigned DEFAULT '0',
`promo_code` varchar(20) DEFAULT NULL,
`a2p_charged` tinyint(1) unsigned DEFAULT '0', 
*/