<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

class CreateA2pUsersTable extends Migration
{
    /**
     * Run the migrations.
     *
     * @return void
     */
    public function up()
    {
        Schema::create('a2p_users', function (Blueprint $table) {
            $table->id();
            $table->timestamps();
            $table->string('uid');
            $table->string('profile__friendly_name');
            $table->string('business_identity__business_type');
            $table->string('business_registration__number');
            $table->string('business_identity__business_industry');
            $table->string('website__url');
            $table->string('profile__url')->nullable();
            $table->string('business_information__country');
            $table->string('street__address');
            $table->string('street__address__2')->nullable();
            $table->string('city');
            $table->string('state');
            $table->string('postal__zip_code');
            $table->string('phone_number')->nullable();
            $table->string('authorized__last__name');
            $table->string('authorized__first__name');
            $table->string('country__name__select');
            $table->string('authorized__email');
            $table->string('authorized__business_title');
            $table->string('job_position__select');
            $table->string('authorized__phone_number');
            $table->string('confirm_representative');
            $table->string('type_brand_input');
            $table->string('campaign__description');
            $table->string('simple__message_1');
            $table->string('simple__message_2');
            $table->string('how_do_optin')->nullable();
            $table->string('opt_in_keywords')->nullable();
            $table->string('opt_in_message')->nullable();
            $table->binary('file_upload_1');
            $table->binary('file_upload_2')->nullable();
            $table->string('privacity__policy');
        });
    }

    /**
     * Reverse the migrations.
     *
     * @return void
     */
    public function down()
    {
        Schema::dropIfExists('a2p_users');
    }
}
