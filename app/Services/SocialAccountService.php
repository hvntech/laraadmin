<?php

namespace App\Services;

use Laravel\Socialite\Contracts\User as ProviderUser;
use App\Models\Social;
use App\User;

class SocialAccountService
{
    public function findOrCreate(ProviderUser $providerUser, $provider)
    {
        $account = Social::where('provider_name', $provider)
                   ->where('provider_id', $providerUser->getId())
                   ->first();
        if ($account) {
            return $account->user;
        } else {

            $user = User::where('email', $providerUser->getEmail())->first();
            if (! $user) {
                $user = User::insert([  
                    'email' => $providerUser->getEmail(),
                    'username'  => substr($providerUser->getEmail(), 0, strpos($providerUser->getEmail(), '@')),
                    'name'  => $providerUser->getName(),
                    'password'  => 'password',
                    'created_at' => now(),
                    'updated_at' => now(),
                ]);
            }
            $user = User::where('email', $providerUser->getEmail())->first();
            
            $user->admin_role_user()->updateOrCreate([
                'role_id' => config('admin.role_default')
            ]);
            
            $user->accounts()->create([
                'provider_id'   => $providerUser->getId(),
                'provider_name' => $provider,
            ]);

            return $user;

        }
    }
}