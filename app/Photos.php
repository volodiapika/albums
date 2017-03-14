<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Photos extends Model
{
	
    protected $dates = ['deleted_at'];

    protected $guarded  = array('id');

    /**
	 * Returns a photo name's.
	 *
	 * @return string
	 */
	public function name()
	{
		return nl2br($this->name);
	}

	/**
	 * Returns a photo url's.
	 *
	 * @return string
	 */
	public function photo_url()
	{
		return nl2br($this->photo_url);
	}

	/**
	 * Get the album's.
	 *
	 * @return integer
	 */
	public function album_id()
	{
		return $this->belongsTo('App\Albums', 'id');
	}

}
