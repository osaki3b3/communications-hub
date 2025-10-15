<?php

namespace App\Http\Controllers;

use App\Models\Chat;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class CampaignsController extends Controller
{
    public function index()
    {

        //dd('dasdf df asd');
        return Inertia::render('Campaigns/Index');
    }

}
