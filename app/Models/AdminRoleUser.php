<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class AdminRoleUser extends Model
{
    protected $table = 'admin_role_users';

	protected $fillable = [
        'role_id', 'user_id'
    ];
    
    public function user(){
        return $this->belongsTo('App\User', 'user_id');
    }
}
