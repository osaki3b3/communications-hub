<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class UserContacts extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('user_contacts', function (Blueprint $table) {
            $table->bigInteger('did')->nullable(false);
            $table->bigInteger('uid')->nullable(false);
            $table->bigInteger('_number')->nullable();
            $table->bigInteger('gid')->nullable(false);
            $table->dateTime('date_added')->nullable();
            $table->tinyInteger('trashed')->nullable(false)->default(0);
            $table->timestamps();
            $table->unique(['did','gid','uid']);
            $table->index('did');
            $table->index('gid');
            $table->index('uid');
            $table->index('trashed');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('user_contacts');
    }
}

/*  
DROP TABLE IF EXISTS `user_contacts`;
CREATE TABLE `user_contacts` (
  `did` int(11) NOT NULL,
  `uid` int(11) NOT NULL,
  `_number` bigint(20) DEFAULT NULL,
  `gid` int(11) NOT NULL,
  `date_added` datetime DEFAULT NULL,
  `trashed` tinyint(1) NOT NULL DEFAULT '0',
  UNIQUE KEY `did_gid_uid` (`did`,`uid`,`gid`) USING BTREE,
  KEY `did` (`did`) USING BTREE,
  KEY `gid` (`gid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `trashed` (`trashed`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
*/
