<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class SignupLog extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('signup_log', function (Blueprint $table) {
            $table->id();
            $table->string('logged_action', 255)->nullable();
            $table->string('phone', 255)->nullable(false);
            $table->string('email', 255)->nullable(false);
            $table->string('fname', 255)->nullable(false);
            $table->string('lname', 255)->nullable(false);
            $table->dateTime('log_date')->nullable(false);
            $table->string('log_date_unix', 255)->nullable(false);
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
        Schema::dropIfExists('signup_log');
    }
}


/*

DROP TABLE IF EXISTS `signup_log`;
CREATE TABLE `signup_log` (
  `id` int(11) unsigned NOT NULL AUTO_INCREMENT,
  `logged_action` varchar(255) DEFAULT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `log_date` datetime NOT NULL,
  `log_date_unix` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=731 DEFAULT CHARSET=latin1;

*/
