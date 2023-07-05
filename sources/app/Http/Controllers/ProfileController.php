<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use \App\Http\Resources\ProductToStoreResource;
use App\Models\User as UserModel;
use DB;
use Auth;
use Hash;
use Str;
use Toastr;

class ProfileController extends Controller
{
    public function index()
    {
        // return Auth::user()->email;
        $profile = UserModel::where('id', Auth::user()->id)->first();

        $data = [
            'page'      => 'Profile',
            'profile'   => $profile
        ];
        
        return view('profile.index', compact('data'));
    }

    public function update(Request $request)
    {
        $data_user = UserModel::where('id', Auth::user()->id)->first();
        
        $foto_lama = $data_user->photo;
        
        $file = $request->file('photo');

        if($foto_lama and $file == ''){

            $filename = $foto_lama;

        }else{
            if($foto_lama){
                $file_path = 'assets/img/profile/'.$foto_lama;
                unlink($file_path);
            }

            $random = Str::random(8);
            $filename = $random.'.'.$file->getClientOriginalExtension();
            $tujuan_upload = 'assets/img/profile';
            $file->move($tujuan_upload, $filename);
        }
        


        
        $update = UserModel::where('id', Auth::user()->id)
                ->update([
                    'user_name'         => $request->user_name,
                    'phone'             => $request->phone,
                    'email'             => $request->email,
                    'gender'            => $request->gender,
                    'password'          => Hash::make($request->password),
                    'photo'             => $filename,
                    'update_date'       => now(),
                    'update_id'         => Auth::user()->id,
                ]);

        if ($update) {
            Toastr::success('Profile berhasil diupdate');
            return \Redirect::back();
        } else {
            Toastr::error('Gagal diupdate, silahkan coba lagi');
            return \Redirect::back();
        }
    }
}
