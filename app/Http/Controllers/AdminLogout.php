<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;

class AdminLogout extends Controller
{
    public function execute() {
        Auth::logout();
        return view('auth.login');
    }
}
