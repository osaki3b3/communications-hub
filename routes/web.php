<?php

use App\Http\Controllers\Auth\AuthenticatedSessionController;
use App\Http\Controllers\ContactsController;
use App\Http\Controllers\ChatsController;
use App\Http\Controllers\IntegrationsController;
use App\Http\Controllers\MediaController;
use App\Http\Controllers\OutboxController;
use App\Http\Controllers\CampaignsController;
use App\Http\Controllers\ToolsController;
use App\Http\Controllers\DashboardController;
use App\Http\Controllers\ImagesController;
use App\Http\Controllers\OrganizationsController;
use App\Http\Controllers\ReportsController;
use App\Http\Controllers\UsersController;
use App\Http\Controllers\A2PController;
use Illuminate\Support\Facades\Route;

/*
|--------------------------------------------------------------------------
| Livecomm Web routes
|--------------------------------------------------------------------------
|
| Here is where you can register web routes for your application. These
| routes are loaded by the RouteServiceProvider within a group which
| contains the "web" middleware group. Now create something great!
|
*/



// Auth

Route::get('login', [AuthenticatedSessionController::class, 'create'])
    ->name('login') 
    ->middleware('guest');

Route::post('login', [AuthenticatedSessionController::class, 'store'])
    ->name('login.store')
    ->middleware('guest');

Route::get('registration', [AuthenticatedSessionController::class, 'registration'])
    ->name('registration')
    ->middleware('guest');

Route::get('verify01', [AuthenticatedSessionController::class, 'verify01'])
    ->name('verify01')
    ->middleware('guest');

Route::get('verify02', [AuthenticatedSessionController::class, 'verify02'])
    ->name('verify02')
    ->middleware('guest');

Route::delete('logout', [AuthenticatedSessionController::class, 'destroy'])
    ->name('logout');

// Dashboard

Route::get('/', [DashboardController::class, 'index'])
    ->name('dashboard')
    ->middleware('auth');


/*     Route::get('/', function(){
        phpinfo();
    })
    ->name('dashboard')
    ->middleware('auth'); */

    

Route::get('{user}/profile', [DashboardController::class, 'profile'])
    ->name('dashboard.profile')
    ->middleware('auth');

Route::get('plan', [DashboardController::class, 'plan'])
    ->name('dashboard.plan')
    ->middleware('auth');

// USERS

Route::get('users', [UsersController::class, 'index'])
    ->name('users')
    ->middleware('auth');

Route::get('users/create', [UsersController::class, 'create'])
    ->name('users.create')
    ->middleware('auth');

Route::post('users', [UsersController::class, 'store'])
    ->name('users.store')
    ->middleware('auth');

Route::get('users/{user}/edit', [UsersController::class, 'edit'])
    ->name('users.edit')
    ->middleware('auth');

Route::put('users/{user}', [UsersController::class, 'update'])
    ->name('users.update')
    ->middleware('auth');

Route::delete('users/{user}', [UsersController::class, 'destroy'])
    ->name('users.destroy')
    ->middleware('auth');

Route::put('users/{user}/restore', [UsersController::class, 'restore'])
    ->name('users.restore')
    ->middleware('auth');

// Organizations

Route::get('organizations', [OrganizationsController::class, 'index'])
    ->name('organizations')
    ->middleware('auth');

Route::get('organizations/create', [OrganizationsController::class, 'create'])
    ->name('organizations.create')
    ->middleware('auth');

Route::post('organizations', [OrganizationsController::class, 'store'])
    ->name('organizations.store')
    ->middleware('auth');

Route::get('organizations/{organization}/edit', [OrganizationsController::class, 'edit'])
    ->name('organizations.edit')
    ->middleware('auth');

Route::put('organizations/{organization}', [OrganizationsController::class, 'update'])
    ->name('organizations.update')
    ->middleware('auth');

Route::delete('organizations/{organization}', [OrganizationsController::class, 'destroy'])
    ->name('organizations.destroy')
    ->middleware('auth');

Route::put('organizations/{organization}/restore', [OrganizationsController::class, 'restore'])
    ->name('organizations.restore')
    ->middleware('auth');

// Contacts

Route::get('contacts', [ContactsController::class, 'index'])
    ->name('contacts')
    ->middleware('auth');

Route::get('contacts/new-contact', [ContactsController::class, 'newcontact'])
    ->name('contacts.new-contact')
    ->middleware('auth');

Route::get('contacts/new-groups', [ContactsController::class, 'newgroup'])
    ->name('contacts.new-groups')
    ->middleware('auth');

Route::get('contacts/new-sign-up', [ContactsController::class, 'newsignup'])
    ->name('contacts.new-sign-up')
    ->middleware('auth');

Route::get('contacts/create', [ContactsController::class, 'create'])
    ->name('contacts.create')
    ->middleware('auth');

Route::post('contacts', [ContactsController::class, 'store'])
    ->name('contacts.store')
    ->middleware('auth');

Route::get('contacts/{contact}/edit', [ContactsController::class, 'edit'])
    ->name('contacts.edit')
    ->middleware('auth');

Route::put('contacts/{contact}', [ContactsController::class, 'update'])
    ->name('contacts.update')
    ->middleware('auth');

Route::delete('contacts/{contact}', [ContactsController::class, 'destroy'])
    ->name('contacts.destroy')
    ->middleware('auth');

Route::put('contacts/{contact}/restore', [ContactsController::class, 'restore'])
    ->name('contacts.restore')
    ->middleware('auth');

// Reports

Route::get('reports', [ReportsController::class, 'index'])
    ->name('reports')
    ->middleware('auth');

// Images

Route::get('/img/{path}', [ImagesController::class, 'show'])
    ->where('path', '.*')
    ->name('image');


// INBOX CONTROLLER 

Route::get('inbox', [ChatsController::class, 'index'])
    ->name('inbox')
    ->middleware('auth');

// OUTBOX CONTROLLER

Route::get('outbox', [OutboxController::class, 'index'])
    ->name('outbox')
    ->middleware('auth');

Route::get('outbox/new-group-text', [OutboxController::class, 'newtext'])
    ->name('outbox.new_group_text')
    ->middleware('auth');

// CAMPAINGS CONTROLLER

Route::get('campaigns', [CampaignsController::class, 'index'])
    ->name('campaigns')
    ->middleware('auth');


// INTEGRATIONS CONTROLLER 

Route::get('integrations', [IntegrationsController::class, 'index'])
    ->name('integrations')
    ->middleware('auth');


// MEDIA CONTROLLER 

Route::get('media-library', [MediaController::class, 'index'])
    ->name('media-library')
    ->middleware('auth');


// TOOLS CONTROLLER

Route::get('tools', [ToolsController::class, 'index'])
    ->name('tools')
    ->middleware('auth');


// TOOLS CONTROLLER

Route::get('a2p', [A2PController::class, 'index'])
    ->name('a2p')
    ->middleware('auth');

Route::post('a2p', [A2PController::class, 'store'])
    ->name('a2p.store')
    ->middleware('auth');

