<?php

return [

    /*
    |--------------------------------------------------------------------------
    | Third Party Services
    |--------------------------------------------------------------------------
    |
    | This file is for storing the credentials for third party services such
    | as Stripe, Mailgun, SparkPost and others. This file provides a sane
    | default location for this type of information, allowing packages
    | to have a conventional place to find your various credentials.
    |
    */

    'mailgun' => [
        'domain' => env('MAILGUN_DOMAIN'),
        'secret' => env('MAILGUN_SECRET'),
    ],

    'ses' => [
        'key' => env('SES_KEY'),
        'secret' => env('SES_SECRET'),
        'region' => 'us-east-1',
    ],

    'sparkpost' => [
        'secret' => env('SPARKPOST_SECRET'),
    ],

    'stripe' => [
        'model' => App\User::class,
        'key' => env('STRIPE_KEY'),
        'secret' => env('STRIPE_SECRET'),
    ],

    // add 
    'facebook' => [
        'client_id'     => env('FB_CLIENT_ID', '1265473776903312'),
        'client_secret' => env('FB_CLIENT_SECRET', '4de1ddc78e3a2337b6c99658a6370e42'),
        'redirect'      => env('FB_URL', 'http://admin.dev:8086/social/handle/facebook'),
    ],

    'twitter' => [
            'client_id'     => env('TWITTER_CLIENT_ID'),
            'client_secret' => env('TWITTER_CLIENT_SECRET'),
            'redirect'      => env('TWITTER_URL'),
    ],

    'github' => [
            'client_id'     => env('GITHUB_CLIENT_ID'),
            'client_secret' => env('GITHUB_CLIENT_SECRET'),
            'redirect'      => env('GITHUB_URL'),
    ],

    'google' => [
            'client_id'     => env('GOOGLE_CLIENT_ID', '953731046452-9ndehp9n6n3igod747lf8bteg83098eq.apps.googleusercontent.com'),
            'client_secret' => env('GOOGLE_CLIENT_SECRET', '7VNoxEQRsp_jCVYu7IfZIqE3'),
            'redirect'      => env('GOOGLE_URL', 'http://admin.dev:8086/social/handle/google'),
    ],
    // end add
];
