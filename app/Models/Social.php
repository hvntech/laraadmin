<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Social extends Model
{
	protected $table = 'social';
    protected $fillable = ['provider_name', 'provider_id' ];

	public function user()
	{
	    return $this->belongsTo('App\User');
	}
}
