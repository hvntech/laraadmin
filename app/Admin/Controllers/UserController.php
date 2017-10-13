<?php

namespace App\Admin\Controllers;

use Illuminate\Http\Request;
use Illuminate\Routing\Controller;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class UserController extends Controller
{
    /**
     * Login page.
     *
     * @return \Illuminate\Contracts\View\Factory|Redirect|\Illuminate\View\View
     */
    public function getLogin()
    {
        if (!Auth::guard('admin')->guest()) {
            return redirect(config('admin.route.prefix'));
        }
        return view('admin.login');
    }
}
