<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Albums extends Model
{

    protected $dates = ['deleted_at'];

    protected $guarded  = array('id');
    
    /**
	 * Returns a formatted name album's.
	 *
	 * @return string
	 */
	public function name()
	{
		return nl2br($this->name);
	}
	
}
