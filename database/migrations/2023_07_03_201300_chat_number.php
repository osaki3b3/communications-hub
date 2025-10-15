<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChatNumber extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chat_number', function (Blueprint $table) {
            $table->id();
            $table->bigInteger('uid')->nullable(false);
            $table->string('number', 100)->nullable(false);
            $table->string('lc_number', 100)->nullable(false);
            $table->enum('is_read', [0, 1])->default(0);
            $table->string('sent_from', 100)->nullable();
            $table->index('number');
            $table->index('uid');
            $table->index('lc_number');
            $table->index('is_read');
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
        Schema::dropIfExists('chat_number');
    }
}

/* 
DROP TABLE IF EXISTS `chat_number`;
CREATE TABLE `chat_number` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `number` varchar(100) NOT NULL,
  `lc_number` varchar(100) NOT NULL,
  `is_read` enum('0','1') DEFAULT '0',
  `sent_from` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `uid` (`uid`),
  KEY `number` (`number`),
  KEY `lc_number` (`lc_number`),
  KEY `is_read` (`is_read`),
  KEY `idx_number` (`number`)
) ENGINE=InnoDB AUTO_INCREMENT=63560 DEFAULT CHARSET=latin1;
*/