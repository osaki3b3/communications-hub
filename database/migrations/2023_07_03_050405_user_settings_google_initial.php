<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserSettingsGoogleInitial extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_settings_numbers', function (Blueprint $table) {
            $table->bigInteger('gvid')->autoIncrement();
            $table->bigInteger('uid')->nullable(false);
            $table->string('g_account_email', 255)->nullable(false);
            $table->string('g_account_password', 255)->nullable(false);
            $table->string('g_original_g', 255)->nullable();
            $table->string('nickname', 255)->nullable(false);
            $table->text('default_join_message');
            $table->text('default_sms_message');
            $table->dateTime('last_sync')->nullable();
            $table->tinyInteger('disabled')->default(0);
            $table->bigInteger('gid')->nullable();
            $table->tinyInteger('send_join_message')->nullable(false)->default(1);
            $table->tinyInteger('send_sms_message')->nullable(false)->default(0);
            $table->string('gv_number', 255)->nullable();
            $table->tinyInteger('deleted')->nullable(false)->default(0);
            $table->tinyInteger('account_type')->nullable(false)->default(0)->comment('0 = google voice, 1 = twilio');
            $table->bigInteger('twid')->nullable(false)->default(0);
            $table->tinyInteger('greeting_type')->nullable(false)->default(0)->comment('0 = text-to-speech, 1 = recorded greeting');
            $table->text('text_to_speech');
            $table->tinyInteger('gender')->nullable(false)->default(0);
            $table->string('recorded_url', 500)->nullable();
            $table->string('forward_to', 500)->nullable();
            $table->dateTime('last_job_history_run')->nullable();
            $table->dateTime('last_job_history_date_processed')->nullable();
            $table->dateTime('entry_date')->nullable();
            $table->bigInteger('show_from_livecomm')->nullable(false)->default(0);
            $table->tinyInteger('call_enqueue_type')->nullable()->default(0);
            $table->string('phone_sid', 500)->nullable();
            $table->tinyInteger('recordings_active')->nullable()->default(0);
            $table->tinyInteger('transcriptions_active')->nullable()->default(0);
            $table->tinyInteger('purge_recordings')->nullable()->default(0);
            $table->tinyInteger('sms_forwarding_active')->nullable();
            $table->string('sms_forwarding_number', 50)->nullable();
            $table->tinyInteger('sms_forwarding_otp_verified')->nullable();
            $table->string('sms_forwarding_code', 50)->nullable();
            $table->tinyInteger('email_forwarding_active')->nullable()->default(0);
            $table->string('email_forwarding_email', 500)->nullable();
            $table->string('gv_number_name', 500)->nullable();
            $table->tinyInteger('twilio_url_updated')->nullable()->default(0);
            $table->index('gv_number');
            $table->index('uid');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_settings_numbers');
    }
}

/*
DROP TABLE IF EXISTS `user_settings_google`;
CREATE TABLE `user_settings_google` (
  `gvid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'Google voice info id',
  `uid` int(11) NOT NULL,
  `g_account_email` varchar(255) NOT NULL,
  `g_account_password` varchar(255) NOT NULL,
  `g_original_g` varchar(255) DEFAULT NULL,
  `nickname` varchar(255) NOT NULL,
  `default_join_message` text,
  `default_sms_message` text,
  `last_sync` timestamp NULL DEFAULT NULL,
  `disabled` int(11) NOT NULL DEFAULT '0',
  `gid` int(11) DEFAULT NULL,
  `send_join_message` int(11) NOT NULL DEFAULT '1',
  `send_sms_message` int(11) NOT NULL DEFAULT '0',
  `gv_number` varchar(255) DEFAULT NULL,
  `deleted` int(11) NOT NULL DEFAULT '0',
  `account_type` int(11) NOT NULL DEFAULT '0' COMMENT '0 = google voice, 1 = twilio',
  `twid` int(11) NOT NULL DEFAULT '0',
  `greeting_type` int(11) DEFAULT '0' COMMENT '0 = text-to-speech, 1 = recorded greeting',
  `text_to_speech` text,
  `gender` int(11) NOT NULL DEFAULT '0',
  `recorded_url` varchar(500) DEFAULT NULL,
  `forward_to` varchar(500) DEFAULT NULL,
  `last_job_history_run` datetime DEFAULT NULL,
  `last_job_history_date_processed` datetime DEFAULT NULL,
  `entry_date` datetime DEFAULT NULL,
  `show_from_livecomm` int(11) NOT NULL DEFAULT '0',
  `call_enqueue_type` int(1) DEFAULT '0',
  `phone_sid` varchar(500) DEFAULT NULL,
  `recordings_active` tinyint(1) unsigned DEFAULT '0',
  `transcriptions_active` tinyint(1) DEFAULT '0',
  `purge_recordings` tinyint(1) DEFAULT '0',
  `sms_forwarding_active` tinyint(1) DEFAULT NULL,
  `sms_forwarding_number` varchar(50) DEFAULT NULL,
  `sms_forwarding_otp_verified` tinyint(1) DEFAULT NULL,
  `sms_forwarding_code` varchar(50) DEFAULT NULL,
  `email_forwarding_active` int(1) DEFAULT '0',
  `email_forwarding_email` varchar(500) DEFAULT NULL,
  `gv_number_name` varchar(500) DEFAULT NULL,
  `twilio_url_updated` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`gvid`),
  KEY `uid` (`uid`),
  KEY `disabled` (`disabled`)
) ENGINE=InnoDB AUTO_INCREMENT=2700 DEFAULT CHARSET=latin1;
*/