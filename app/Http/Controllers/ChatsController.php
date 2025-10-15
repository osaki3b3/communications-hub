<?php

namespace App\Http\Controllers;

use App\Models\Chat;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class ChatsController extends Controller
{
    public function index()
    {

        return Inertia::render('Chat/Index');
        tail.select(".tail");

    }
}
