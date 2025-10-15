<?php

namespace App\Http\Controllers;

use App\Models\Tools;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class ToolsController extends Controller
{
    public function index()
    {
        return Inertia::render('Tools/Index');
    }

}