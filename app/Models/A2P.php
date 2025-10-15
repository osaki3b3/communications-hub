<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class a2p extends Model
{
    use HasFactory;

    protected $table = 'a2p_users';
    protected $fillable = [
        'uid', 'profile__friendly_name', 'business_identity__business_type', 'business_registration__number', 'business_identity__business_industry', 'website__url', 'profile__url', 'business_information__country', 'street__address', 'street__address__2', 'city', 'state', 'postal__zip_code', 'phone_number', 'authorized__last__name', 'authorized__first__name', 'country__name__select', 'authorized__email', 'authorized__business_title', 'job_position__select', 'authorized__phone_number', 'confirm_representative', 'type_brand_input', 'campaign__description', 'simple__message_1', 'simple__message_2', 'how_do_optin', 'opt_in_keywords', 'opt_in_message', 'file_upload_1', 'file_upload_2', 'privacity__policy',
    ];
}
