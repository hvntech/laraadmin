<?php

namespace App\Http\Controllers\Auth;

use Illuminate\Http\Request;
use App\Http\Controllers\Controller;
use Socialite;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Redirect;

class SocialAccountController extends Controller
{
    /**
     * Redirect the user to the GitHub authentication page.
     *
     * @return Response
     */
    public function redirectToProvider($provider)
    {

        return Socialite::driver($provider)->redirect();
    }

    /**
     * Obtain the user information
     *
     * @return Response
     */
    public function handleProviderCallback(\App\Services\SocialAccountService $accountService, $provider )
    {
        try {
            $user = Socialite::with($provider)->user();	
        } catch (\Exception $e) {
            return redirect('/');
        }

        $authUser = $accountService->findOrCreate(
            $user,
            $provider
        );

        if (Auth::guard('admin')->loginUsingId($authUser->id)) {
            admin_toastr(trans('admin.login_successful'));

            return redirect()->intended(config('admin.route.prefix'));
        }
        return Redirect::back()->withInput()->withErrors(['username' => $this->getFailedLoginMessage()]);
    }
}
