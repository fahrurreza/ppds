<?php

namespace App\Http\Controllers;

use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use App\Models\User as UserModel;
use App\Models\Resetpassword as ResetpasswordModel;
use Toastr;
use Hash;
use Auth;
use Validator;
use DB;
use App\Mail\resetPassword;
use Illuminate\Support\Facades\Mail;
use Illuminate\Support\Facades\Crypt;

class AuthController extends Controller
{
    public function index()
    {
        return view('auth.login');
    }

    public function store(Request $request)
    {
        $request->validate([
            'email'     => ['required', 'email'],
            'password'  => ['required']
        ]);

        $user = UserModel::where('email', $request->email)->where('status', 1)                 
                            ->where('user_level', '1')
                            ->first();

        if($user)
        {
            if(Hash::check($request->password, $user->password))
            {
                
                Auth::login($user);

                Toastr::success('Login berhasil!');
                
                return Redirect('dashboard');
            }
            else
            {
                Toastr::error('Username atau Password Salah');
                return \Redirect::back();
            }
        }
        else
        {
            Toastr::error('Maaf, Anda Tidak Memiliki akses atau akun anda belum aktif');
            return \Redirect::back();
        }
    }

    public function registration()
    {
        return view('auth.registration');
    }

    public function registration_store(Request $request)
    {
        $request->validate([
            'user_name'     => 'required',
            'phone'         => 'required',
            'gender'        => 'required',
            'email'         => 'required | unique:stp_user',
            'password'      => 'required | min:6',
            'password2'     => 'required_with:password|same:password'
        ]);

        

            $insert =   DB::table('stp_user')->insert([
                            'user_name'     => $request->user_name,
                            'phone'         => $request->phone,
                            'gender'        => $request->gender,
                            'email'         => $request->email,
                            'password'      => Hash::make($request->password),
                            'user_level'    => 1,
                            'status'        => 1,
                            'photo'         => null,
                            'update_date'   => now(), 
                            'update_id'     => null,
                        ]);

            if($insert){
                Toastr::success('Register berhasil, silahkan login');
                return \Redirect::back();
            }else{
                Toastr::error('Register Gagal');
                return \Redirect::back();
            }
        


    }

    public function change_password()
    {
        $data = [
            'page'  => 'Change Password',
        ];
        return view('user.change_password', compact('data'));
    }

    public function update_password(Request $request)
    {
        $user = UserModel::where('id', Auth::user()->id)->first();

        if($user)
        {
            if(Hash::check($request->password, $user->password))
            {
                $data_update = [
                    'password' => Hash::make($request->password_update),
                ];
                
                $update = UserModel::where('id', Auth::user()->id)->update($data_update);

                Toastr::success('Password berhasil di update!');
                return Redirect('dashboard');
            }
            else
            {
                Toastr::error('Password tidak sesuai!');
                return \Redirect::back();
            }
        }
        else
        {
            Toastr::error('Password gagal update!');
            return \Redirect::back();
        }
    }

    public function reset_password()
    {
        return view('auth.resetpassword');
    }

    public function resetPassword(Request $request)
    {
        DB::beginTransaction();

        try {

            $cek_user = UserModel::where('email', $request->email)->first();

            if(!$cek_user)
            {
                Toastr::error('Email tidak ditemukan');
                return \Redirect::back();
            }

            $otp        = rand(111111, 999999);
            $resetLink  = encrypt($otp);;
    
            $time_start = date("Y-m-d H:i:s");
            $time_end = date('Y-m-d H:i:s', strtotime('+5 minutes', strtotime($time_start)));
    
            
            Mail::to($request->email)->send(new resetPassword($resetLink));

            DB::table('reset_password')->insert([
                'email'             => $request->email,
                'code'              => $otp,
                'start'             => $time_start,
                'end'               => $time_end
            ]);

            DB::commit();

            Toastr::success('Kami sudah mengirimi anda pesan. Cek email untuk melakukan reset password');
            return \Redirect::back();
        
        } catch (Exception $e) {
            DB::rollback();
            Toastr::error('Portofolio di posting, silahkan coba lagi');
            return \Redirect::back();
        }

    }

    public function user_reset_password($link)
    {
        $code = decrypt($link);

        $cekLink =   ResetpasswordModel::where('code', $code)->first();

        if(!$cekLink)
        {
            return abort(404);
        }else{
            $data = [
                'email' => $cekLink->email
            ];
            
            return view('email.set_password', compact('data'));
        }
        
    }

    public function set_password(Request $request)
    {
        $request->validate([
            'password'      => 'required | min:6',
            'password2'     => 'required_with:password|same:password'
        ]);

        $data_update = [
            'password' => Hash::make($request->password_update),
        ];
        
        $update = UserModel::where('email', $request->email)->update($data_update);

        if($update){
            Toastr::success('Register berhasil, silahkan login');
            return Redirect('login');
        }else{
            Toastr::error('Register Gagal');
            return \Redirect::back();
        }
    }

    public function logout()
    {
        session()->flush();
        Auth::logout();
        return Redirect('login');
    }
}
