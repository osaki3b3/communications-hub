<?php

namespace App\Http\Controllers;

use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class ReportsController extends Controller
{
    public function index()
    {
        return Inertia::render('Reports/Index', [
            'contacts' => Auth::user()->account->contacts()
                ->orderByName()
                ->paginate(100)
                ->through(fn ($contact) => [
                    'id' => $contact->id,
                ]),

        ]);
    }
}
