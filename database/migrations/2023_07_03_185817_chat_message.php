<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class ChatMessage extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('chat_message', function (Blueprint $table) {
            $table->id();
            $table->timestamps();

            $table->bigInteger('chatid')->nullable(false);
            $table->string('message', 5000)->nullable(false);
            $table->dateTime('date_replied')->nullable();
            $table->tinyInteger('by_admin')->nullable(false)->default(0);
            $table->string('initial_plugin_message', 500)->nullable();

            $table->index('chatid');
            $table->index('message');
            $table->index('date_replied');

        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('chat_message');
    }
}

/* 
DROP TABLE IF EXISTS `chat_message`;
CREATE TABLE `chat_message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `chatid` int(11) NOT NULL,
  `message` varchar(5000) NOT NULL,
  `date_replied` datetime DEFAULT NULL,
  `by_admin` int(11) NOT NULL DEFAULT '0',
  `initial_plugin_message` varchar(500) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id` (`id`),
  KEY `chatid` (`chatid`),
  KEY `message` (`message`(767)),
  KEY `date_replied` (`date_replied`),
  KEY `by_admin` (`by_admin`),
  KEY `idx_chatid` (`chatid`)
) ENGINE=InnoDB AUTO_INCREMENT=4193473 DEFAULT CHARSET=latin1;
*/
