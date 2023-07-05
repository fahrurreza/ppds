<?php

namespace App\Http\Controllers;

use App\Models\User as UserModel;
use App\Models\Hospital as HospitalModel;
use App\Models\Stase as StaseModel;
use App\Models\Portofolio as PortofolioModel;
use App\Models\Tindakan as TindakanModel;
use App\Models\Casereport as CasereportModel;
use App\Models\Karyailmiah as KaryailmiahModel;
use App\Models\Extrakulikuler as ExtrakulikulerModel;
use App\Http\Controllers\Controller;
use Illuminate\Http\Request;
use DB;
use Str;
use Image;
use Auth;
use Toastr;

class PortofolioController extends Controller
{
    public function index()
    {
        $postofolio = DB::table('trx_portofolio')->get();

        $data = [
            'page'          => 'Portofolio List',
            'portofolio'    => $postofolio,
        ];
        return view('portofolio.index', compact('data'));
    }

    public function detail($trx_id)
    {
        $portofolio = PortofolioModel::where('trx_id', $trx_id)->first();

        if($portofolio->portofolio_id == 1){
            $detail = TindakanModel::with('portofolio')->where('trx_id', $trx_id)->first();
            return $detail;
            $data = [
                'page'          => 'Portofolio List',
                'portofolio'    => $detail,
            ];

            return view('portofolio.detail_tindakan', compact('data'));

        }if($portofolio->portofolio_id == 2){
            $detail = CasereportModel::with('portofolio')->where('trx_id', $trx_id)->first();
            return $detail;
            $data = [
                'page'          => 'Portofolio List',
                'portofolio'    => $detail,
            ];

            return view('portofolio.detail_case', compact('data'));

        }if($portofolio->portofolio_id == 3){
            $detail = KaryailmiahModel::with('portofolio')->where('trx_id', $trx_id)->first();

            return $detail;
            
            $data = [
                'page'          => 'Portofolio List',
                'portofolio'    => $detail,
            ];

            return view('portofolio.detail_karya', compact('data'));

        }else{
            $detail = ExtrakulikulerModel::with('portofolio')->where('trx_id', $trx_id)->first();
            return $detail;
            $data = [
                'page'          => 'Portofolio List',
                'portofolio'    => $detail,
            ];

            return view('portofolio.detail_extrakulikuler', compact('data'));

        }

        
    }


    public function form_portofolio()
    {
        $data = [
            'page'          => 'Portofolio Form',
        ];
        return view('portofolio.form', compact('data'));
    }

    public function case_portofolio()
    {
        $data = [
            'supervisor'    => UserModel::where('user_level', 3)->get(),
            'trx_id'        =>  trx_id(),
            'stase'         => StaseModel::all(),
            'page'          => 'Portofolio Case Report',
        ];
        return view('portofolio.case', compact('data'));
    }

    public function extrakulikuler_portofolio()
    {
        $data = [
            'trx_id'        => trx_id(),
            'supervisor'    => UserModel::where('user_level', 3)->get(),
            'stase'         => StaseModel::all(),
            'page'          => 'Portofolio Extrakulikuler',
        ];
        return view('portofolio.extrakulikuler', compact('data'));
    }

    public function karya_portofolio()
    {
        $data = [
            'supervisor'    => UserModel::where('user_level', 3)->get(),
            'trx_id'        => trx_id(),
            'stase'         => StaseModel::all(),
            'page'          => 'Portofolio Karya Ilmiah',
        ];
        return view('portofolio.karya', compact('data'));
    }

    public function tindakan_portofolio()
    {
        $data = [
            'supervisor'    => UserModel::where('user_level', 3)->get(),
            'hospital'      => HospitalModel::all(),
            'stase'         => StaseModel::all(),
            'trx_id'        =>  trx_id(),
            'page'          => 'Portofolio Pelayanan/Tindakan',
        ];
        return view('portofolio.tindakan', compact('data'));
    }

    public function post_tindakan(Request $request)
    {
        DB::beginTransaction();

        try {
                $trx_id = trx_id();

                $insert_portofolio  =   DB::table('trx_portofolio')->insert([
                                        'portofolio_id'     => 1,
                                        'trx_id'            => $trx_id,
                                        'stase_id'          => $request->stase_id,
                                        'supervisor_id'     => $request->supervisor_id,
                                        'ppds_id'           => Auth::user()->id,
                                        'status'            => 1,
                                        'create_date'       => now(),
                                        'create_id'         => Auth::user()->id
                                        ]);

                
                $insert_tindakan    =   DB::table('trx_tindakan')->insert([
                                        'trx_id'            => $trx_id,
                                        'stase_id'          => $request->stase_id,
                                        'hospital_id'       => $request->hospital_id,
                                        'description'       => $request->description
                                        ]);

                // PROSES FILE UPLOAD

                $random = Str::random(8);
                $file = $request->file('photo');
                $filename = $random.'.'.$file->getClientOriginalExtension();
                
                $tujuan_upload = 'assets/img/posting';
                $file->move($tujuan_upload, $filename);

                $insert_path        =   DB::table('path_portofolio')->insert([
                                        'trx_id'            => $trx_id,
                                        'path'              => $filename
                                        ]);

                DB::commit();

                Toastr::success('Tindakan sukses di posting');
                return Redirect('list-portofolio');
        
        } catch (Exception $e) {
            DB::rollback();
            Toastr::error('Tindakan gagal di posting, silahkan coba lagi');
            return \Redirect::back();
        }

            

    }

    public function post_case_report(Request $request)
    {

        DB::beginTransaction();
        
        try {
                $trx_id = trx_id();

                $insert_portofolio      =   DB::table('trx_portofolio')->insert([
                                            'portofolio_id'     => 2,
                                            'trx_id'            => $trx_id,
                                            'stase_id'          => $request->stase_id,
                                            'supervisor_id'     => $request->supervisor_id,
                                            'ppds_id'           => Auth::user()->id,
                                            'status'            => 1,
                                            'create_date'       => now(),
                                            'create_id'         => Auth::user()->id
                                            ]);

                
                $insert_case_report     =   DB::table('trx_case_report')->insert([
                                            'trx_id'            => $trx_id,
                                            'presenter'         => $request->presenter,
                                            'description'       => $request->description
                                            ]);

                // PROSES FILE UPLOAD

                $random = Str::random(8);
                $file = $request->file('photo');
                $filename = $random.'.'.$file->getClientOriginalExtension();
                
                $tujuan_upload = 'assets/img/posting';
                $file->move($tujuan_upload, $filename);

                $insert_path            =   DB::table('path_portofolio')->insert([
                                            'trx_id'            => $trx_id,
                                            'path'              => $filename
                                            ]);

                DB::commit();

                Toastr::success('Case Report sukses di posting');
                return Redirect('list-portofolio');
        
        } catch (Exception $e) {
            DB::rollback();
            Toastr::error('Case Report gagal di posting, silahkan coba lagi');
            return \Redirect::back();
        }

            

    }

    public function post_karya(Request $request)
    {

        DB::beginTransaction();
        
        try {
                $trx_id = trx_id();

                $insert_portofolio      =   DB::table('trx_portofolio')->insert([
                                            'portofolio_id'     => 3,
                                            'trx_id'            => $trx_id,
                                            'stase_id'          => $request->stase_id,
                                            'supervisor_id'     => $request->supervisor_id,
                                            'ppds_id'           => Auth::user()->id,
                                            'status'            => 1,
                                            'create_date'       => now(),
                                            'create_id'         => Auth::user()->id
                                            ]);

                
                $insert_case_report     =   DB::table('trx_karya_ilmiah')->insert([
                                            'trx_id'            => $trx_id,
                                            'jenis_karya'       => $request->jenis_karya_ilmiah,
                                            'judul'             => $request->judul,
                                            'description'       => $request->description
                                            ]);

                // PROSES FILE UPLOAD

                $random = Str::random(8);
                $file = $request->file('file');
                $filename = $random.'.'.$file->getClientOriginalExtension();
                
                $tujuan_upload = 'assets/img/posting';
                $file->move($tujuan_upload, $filename);

                $insert_path            =   DB::table('path_portofolio')->insert([
                                            'trx_id'            => $trx_id,
                                            'path'              => $filename
                                            ]);

                DB::commit();

                Toastr::success('Karya Ilmiah sukses di posting');
                return Redirect('list-portofolio');
        
        } catch (Exception $e) {
            DB::rollback();
            Toastr::error('Karya Ilmiah gagal di posting, silahkan coba lagi');
            return \Redirect::back();
        }

            

    }

    public function post_extrakulikuler(Request $request)
    {

        DB::beginTransaction();
        
        try {
                $trx_id = trx_id();

                $insert_portofolio      =   DB::table('trx_portofolio')->insert([
                                            'portofolio_id'     => 4,
                                            'trx_id'            => $trx_id,
                                            'stase_id'          => $request->stase_id,
                                            'supervisor_id'     => $request->supervisor_id,
                                            'ppds_id'           => Auth::user()->id,
                                            'status'            => 1,
                                            'create_date'       => now(),
                                            'create_id'         => Auth::user()->id
                                            ]);

                
                $insert_extrakulikuler  =   DB::table('trx_extrakulikuler')->insert([
                                            'trx_id'            => $trx_id,
                                            'kegiatan_id'       => 1,
                                            'description'       => $request->description
                                            ]);

                // PROSES FILE UPLOAD

                $random = Str::random(8);
                $file = $request->file('photo');
                $filename = $random.'.'.$file->getClientOriginalExtension();
                
                $tujuan_upload = 'assets/img/posting';
                $file->move($tujuan_upload, $filename);

                $insert_path            =   DB::table('path_portofolio')->insert([
                                            'trx_id'            => $trx_id,
                                            'path'              => $filename
                                            ]);

                DB::commit();

                Toastr::success('Karya Ilmiah sukses di posting');
                return Redirect('list-portofolio');
        
        } catch (Exception $e) {
            DB::rollback();
            Toastr::error('Karya Ilmiah gagal di posting, silahkan coba lagi');
            return \Redirect::back();
        }

            

    }

}
