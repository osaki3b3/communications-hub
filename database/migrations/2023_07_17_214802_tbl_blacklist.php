<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class TblBlacklist extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('tbl_blacklist', function (Blueprint $table) {
           // $table->id();
           $table->increments('blid');
           $table->bigInteger('uid')->nullable(false);
           $table->bigInteger('did')->nullable(false);
           $table->bigInteger('number')->nullable(false);
           $table->dateTime('date_created')->nullable(false);
           $table->index('did');
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
        Schema::dropIfExists('tbl_blacklist');
    }
}


/*


DROP TABLE IF EXISTS `tbl_blacklist`;
CREATE TABLE `tbl_blacklist` (
  `blid` int(11) NOT NULL AUTO_INCREMENT COMMENT 'black list id',
  `uid` int(11) NOT NULL COMMENT 'user id',
  `did` int(11) NOT NULL COMMENT 'directory id',
  `number` bigint(20) DEFAULT NULL,
  `date_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`blid`),
  KEY `did` (`did`)
) ENGINE=InnoDB AUTO_INCREMENT=135150 DEFAULT CHARSET=latin1;


*/
