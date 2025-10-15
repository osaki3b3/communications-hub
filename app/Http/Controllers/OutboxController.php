<?php

namespace App\Http\Controllers;

use App\Models\Outbox;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;
use Illuminate\Support\Facades\Request;
use Illuminate\Validation\Rule;
use Inertia\Inertia;

class OutboxController extends Controller
{
    public function index()
    {
        return Inertia::render('Outbox/Index', [
            'filters' => Request::all('search', 'trashed'),
            'contacts' => Auth::user()->account->contacts()
                ->with('organization')
                ->orderByName()
                ->paginate(10)
                ->through(fn ($contact) => [
                    'name' => $contact->name,
                ]),

        ]);
    }
    public function newtext()
    {
        return Inertia::render('Outbox/NewGroupText');
    }

}