<?php
use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserGroups extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_groups', function (Blueprint $table) {
            $table->bigInteger('gid')->autoIncrement();
            $table->bigInteger('uid')->nullable(false);
            $table->string('name', 255)->nullable(false);
            $table->timestamp('created');
            $table->tinyInteger('is_default')->nullable(false)->default(0);
            $table->tinyInteger('custom')->nullable(false)->default(0);
            $table->integer('sort_order')->nullable(false)->default(0);
            $table->index('uid');
            $table->index('name');
            $table->index('is_default');
            $table->index('custom');
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
        Schema::dropIfExists('user_groups');
    }
}

/* 
DROP TABLE IF EXISTS `user_groups`;
CREATE TABLE `user_groups` (
  `gid` int(11) NOT NULL AUTO_INCREMENT,
  `uid` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `is_default` tinyint(4) NOT NULL DEFAULT '0',
  `custom` tinyint(4) NOT NULL DEFAULT '0',
  `sort_order` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`gid`),
  KEY `uid` (`uid`),
  KEY `name` (`name`),
  KEY `default` (`is_default`),
  KEY `custom` (`custom`)
) ENGINE=InnoDB AUTO_INCREMENT=9264 DEFAULT CHARSET=latin1;
*/
