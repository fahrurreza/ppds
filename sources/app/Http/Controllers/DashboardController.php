<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use \App\Http\Resources\ProductToStoreResource;
use App\Models\ProductToStore as ProductToStoreModel;
use App\Models\SellingInfo as SellingInfoModel;
use DB;
use Auth;

class DashboardController extends Controller
{
    public function index()
    {
        $data = [
            'page'  => 'Dashboard',
        ];
        return view('dashboard.index', compact('data'));
    }

}
