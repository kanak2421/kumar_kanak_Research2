<?php

namespace App\Listeners;

use App\Events\ExampleEvent;
use Illuminate\Contracts\Queue\ShouldQueue;
use Illuminate\Queue\InteractsWithQueue;

class ExampleListener
{
    /**
     * Event listener creating.
     *
     * @return void
     */
    public function __construct()
    {
        //
    }

    /**
     * Holding event.
     *
     * @param  \App\Events\ExampleEvent  $event
     * @return void
     */
    public function handle(ExampleEvent $event)
    {
        //
    }
}
