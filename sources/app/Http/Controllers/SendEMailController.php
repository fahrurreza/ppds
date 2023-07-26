<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Mail\resetPassword;
use Illuminate\Support\Facades\Mail;

class SendEMailController extends Controller
{
    public function resetPassword()
    {
        
        $otp = rand(111111, 999999);

        $time_start = date("Y-m-d H:i:s");
        $time_end = date('Y-m-d H:i:s', strtotime('+5 minutes', strtotime($time_start)));

        
    Mail::to('futrimardiani@gmail.com')->send(new resetPassword());

    return "Test email sent!";

    }
}
