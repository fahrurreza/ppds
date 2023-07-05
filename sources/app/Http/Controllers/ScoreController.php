<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\Hospital as HospitalModel;

class ScoreController extends Controller
{
    public function index()
    {
        $data = [
            'page'  => 'Daftar Nilai',
        ];
        return view('score.index', compact('data'));
    }
}
