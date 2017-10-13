<?php

namespace App;

use Illuminate\Notifications\Notifiable;
use Illuminate\Foundation\Auth\User as Authenticatable;

class User extends \TCG\Voyager\Models\User
{
    use Notifiable;
    protected $table = 'admin_users';
    public $timestamps = [ "created_at", "updated_at" ]; // same that true
    /**
     * The attributes that are mass assignable.
     *
     * @var array
     */
    protected $fillable = [
        'username', 'name', 'email', 'password', 'created_at', 'updated_at'
    ];

    /**
     * The attributes that should be hidden for arrays.
     *
     * @var array
     */
    protected $hidden = [
        'password', 'remember_token',
    ];

    public function accounts(){
        return $this->hasMany('App\Models\Social');
    }

    public function admin_role_user(){
        return $this->hasOne('App\Models\AdminRoleUser');
    }
}
