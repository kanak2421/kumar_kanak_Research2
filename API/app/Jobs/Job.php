<?php

namespace App\Jobs;

use Illuminate\Bus\Queueable;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;
use Illuminate\Queue\SerializesModels;

abstract class Job implements ShouldQueue
{
    /*
    |--------------------------------------------------------------------------
    | Queueable Jobs
    |--------------------------------------------------------------------------
    |
    | This job provides a location which is shared among all the jobs. The Characteristics included with the class provides access to the "queueOn" and "delay" queue helper methods.
    |
    */

    use InteractsWithQueue, Queueable, SerializesModels;
}
