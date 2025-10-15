<?php

namespace App\Http\Controllers;

use App\Models\Dashboard;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class DashboardController extends Controller
{
    public function index()
    {
        return Inertia::render('Dashboard/Index', [
            'contacts' => Auth::user()->account->contacts()
                ->orderByName()
                ->paginate(100)
                ->through(fn ($contact) => [
                    'id' => $contact->id,
                ]),

        ]);
    }

    public function plan()
    {
        return Inertia::render('Dashboard/Plan');
    }
    
    public function profile()
    {
        return Inertia::render('Dashboard/Profile');
    }

}
