<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Roku extends Model
{
    /**
     * The table our model uses from the database
     * 
     * @var string
     */
    protected $table = 'rokumovies';

    /**
     * Indicates whether or not our model is using the
     * created_at
     * and
     * updated_at
     * columns in the database.
     * 
     * @var bool
     */
    public $timestamps = false;

    /**
     * The properties / columns on the model that are "mass assignable" -
     * meaning they can be passed in as keys on an array to either create() or update()
     * Acts as a whitelist of acceptable inputs
     * 
     * @var array
     */
    public function languages()
    {
        // belongs to many will look for a table
        // that is the name of this model
        // and the name of the related model
        // made singular, and in alphabetical order
        // i.e genre_song
        return $this->belongsToMany(Language::class);
    }
}