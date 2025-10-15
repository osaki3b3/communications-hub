<?php

namespace App\Http\Controllers;
  
// use App\Models\A2P;
// use Illuminate\Support\Facades\Auth;
// use Illuminate\Support\Facades\Redirect;
// use Illuminate\Support\Facades\RedirectResponse;
// use Illuminate\Support\Facades\ValidationException;
// use Illuminate\Support\Facades\Validation;
// use Illuminate\Support\Facades\Request;
// use Illuminate\Validation\Rule;
// use Inertia\Inertia;

use App\Models\A2P;
use Illuminate\Support\Facades\Auth;
use Illuminate\Http\RedirectResponse;
use Illuminate\Http\Request;
use Illuminate\Validation\ValidationException;
use Illuminate\View\View;
use Inertia\Inertia;
use Illuminate\Support\Facades\DB;

class A2PController extends Controller
{
    
    public function index () 
    {

        $a2p = A2p::get();
        return Inertia::render('a2p/index');

    }

    public function store(Request $request)
    {

        $a2p_validator = $request->validate([

            'profile__friendly_name' => 'required',
            'business_identity__business_type' => 'required',
            'business_registration__number' => 'required|numeric',
            'business_identity__business_industry' => 'required',
            'website__url' => 'required|url:http,http',
            'profile__url' => 'nullable|url:http,http',
            'business_information__country' => 'required',
            'street__address' => 'required',
            'street__address__2' => 'nullable',
            'city' => 'required',
            'state' => 'required',
            'postal__zip_code' => 'required|numeric',
            'phone_number' => 'nullable|numeric',
            'authorized__last__name' => 'required',
            'authorized__first__name' => 'required',
            'country__name__select' => 'required',
            'authorized__email' => 'required|email',
            'authorized__business_title' => 'required',
            'job_position__select' => 'required',
            'authorized__phone_number' => 'required|numeric',
            'confirm_representative' => 'required',
            'type_brand_input' => 'required',
            'register__campaign_select' => 'required',
            'campaign__description' => 'required',
            'simple__message_1' => 'required',
            'simple__message_2' => 'required',
            'how_do_optin' => 'nullable|min:40|max:2048',
            'opt_in_keywords' => 'nullable',
            'opt_in_message' => 'nullable|min:20|max:230',
            'file_upload_1' => 'required|image',
            'file_upload_2' => 'nullable|image',
        ]);

        $a2p = new A2p;
 
        $a2p->uid = $request->uid;
        $a2p->profile__friendly_name = $request->profile__friendly_name;
        $a2p->business_identity__business_type = $request->business_identity__business_type;
        $a2p->business_registration__number = $request->business_registration__number;
        $a2p->business_identity__business_industry = $request->business_identity__business_industry;
        $a2p->website__url = $request->website__url;
        $a2p->profile__url = $request->profile__url;
        $a2p->business_information__country = $request->business_information__country;
        $a2p->street__address = $request->street__address;
        $a2p->street__address__2 = $request->street__address__2;
        $a2p->city = $request->city;
        $a2p->state = $request->state;
        $a2p->postal__zip_code = $request->postal__zip_code;
        $a2p->phone_number = $request->phone_number;
        $a2p->authorized__last__name = $request->authorized__last__name;
        $a2p->authorized__first__name = $request->authorized__first__name;
        $a2p->country__name__select = $request->country__name__select;
        $a2p->authorized__email = $request->authorized__email;
        $a2p->authorized__business_title = $request->authorized__business_title;
        $a2p->job_position__select = $request->job_position__select;
        $a2p->authorized__phone_number = $request->authorized__phone_number;
        $a2p->confirm_representative = $request->confirm_representative;
        $a2p->type_brand_input = $request->type_brand_input;
        $a2p->campaign__description = $request->campaign__description;
        $a2p->simple__message_1 = $request->simple__message_1;
        $a2p->simple__message_2 = $request->simple__message_2;
        $a2p->how_do_optin = $request->how_do_optin;
        $a2p->opt_in_keywords = $request->opt_in_keywords;
        $a2p->opt_in_message = $request->opt_in_message;
        $a2p->file_upload_1 = $request->file_upload_1;
        $a2p->file_upload_2 = $request->file_upload_2;
        $a2p->privacity__policy = $request->privacity__policy;
 
        $a2p->save();

        return redirect()->back()->with('a2p','a2p Registeres Successfully');

    }

}
