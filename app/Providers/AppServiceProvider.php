<?php

namespace App\Providers;

use Illuminate\Support\ServiceProvider;
use Illuminate\Support\Facades\Schema;

class AppServiceProvider extends ServiceProvider
{
    /**
     * Bootstrap any application services.
     *
     * @return void
     */
    public function boot()
    {
        //
		Schema::defaultStringLength(191);
	}

    /**
     * Register any application services.
     *
     * @return void
     */
    public function register()
    {
        // $models = array(
        //     'User'
        // );
        // foreach ($models as $model) {
        //     $this->app->bind("App\Repositories\Interfaces\\". $model . "Interface", "App\Repositories\Eloquents\\" . $model . "Repository");
        // }
    }
}
