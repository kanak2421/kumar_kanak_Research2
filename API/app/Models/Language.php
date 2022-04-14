<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Relations\BelongsToMany;

class Language extends Model
{
    /**
     * The content comes from database
     * 
     * @var string
     */
    protected $table = 'languages';

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
    protected $fillable = [
        'name'
    ];

    /* ======================== RELATIONSHIPS ==================== */

    /**
     * A language has many movies and tv shows
     * 
     * @return BelongsToMany
     */
    public function roku()
    {
        return $this->belongsToMany(Roku::class);
    }
    public function rokushow()
    {
        return $this->belongsToMany(Rokushow::class);
    }
}