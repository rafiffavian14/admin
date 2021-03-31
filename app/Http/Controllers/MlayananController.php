<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Manajemen_layanan;
use App\Models\Jenis_pertek;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use App\Models\Instansi;
use App\Models\Jenis_sk;
use Validator;

class MlayananController extends Controller
{
    public function index()
    {
        $instansi = Instansi::all();
        $jenis_sk = Jenis_sk::all();
        $jenis_pertek = Jenis_pertek::all();
    	return view('manajemen-layanan', [

                'instansi'     => $instansi,
                'jenis_sk'     => $jenis_sk,
                'jenis_pertek' => $jenis_pertek,
                 
            ]);
    }

    // public function store(Request $request)
    // {
    //     $input = $request->all();
    //     $input['photo'] = null;

    //     // $file =  $request->file('image');
    //     // $fileNameArr = explode('.',$file->getClientOriginalName());
    //     // $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
    //     // $file->move('userimage', $fileName);

    //     if ($request->hasFile('photo')) {
    //         $file =  $request->file('photo');
    //         $fileNameArr = explode('.',$file->getClientOriginalName());
    //         $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
    //         $input['photo'] = '/upload/photo/' . $fileName;
    //         $request->photo->move(public_path('/upload/photo'), $input['photo']);
    //     }


    //     Manajemen_layanan::create($input);

    //     return response()->json([
    //         'success' => true
    //     ]);
    // }

    public function store(Request $request)
    {
        $rules = array(

            'daftar_layanan'    =>  'required',
            'prosedur'          =>  'required',
            'photo'             =>  'required|image'
        );

        $error = Validator::make($request->all(), $rules);

        if($error->fails())
        {
            return response()->json(['errors' => $error->errors()->all()]);
        }

        if ($request->hasFile('photo')) 
        {
            $file        =  $request->file('photo');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName    = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $photo       = '/upload/photo/' . $fileName;
            $request->photo->move(public_path('/upload/photo'), $photo);
        }

        $form_data = array(

                'daftar_layanan'   =>  $request->daftar_layanan,
                'prosedur'         =>  $request->prosedur,
                'photo'            =>  $photo

        );

        Manajemen_layanan::create($form_data);

        return response()->json(['success' => 'Data Added successfully.']);

    }

    public function edit($id)
    {
        $layanan = Manajemen_layanan::find($id);
        return $layanan;
    }

    public function show($id)
    {
        $layanan = Manajemen_layanan::find($id);
        return $layanan;
    }

    public function update(Request $request)
    {
        $photo_name = $request->hidden_image;
        $photo = $request->file('photo');

        if ($photo != '') 
        {
            $rules = array(

                'daftar_layanan'    =>  'required',
                'prosedur'          =>  'required',
                'photo'             =>  'image|max:2048'
            );

            $error = Validator::make($request->all(), $rules);

            if($error->fails())
            {
                return response()->json(['errors' => $error->errors()->all()]);
            }

            
            unlink(public_path($photo_name));

            $fileNameArr = explode('.',$photo->getClientOriginalName());    
            $photo_name  = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];  
            $photo->move(public_path('/upload/photo/'), $photo_name);   
            
        }
        else
        {
           $rules = array(

                'daftar_layanan'    =>  'required',
                'prosedur'          =>  'required'
            ); 

            $error = Validator::make($request->all(), $rules);

            if($error->fails())
            {
                return response()->json(['errors' => $error->errors()->all()]);
            }
        }

        $form_data = array(

            'daftar_layanan'  =>   $request->daftar_layanan,
            'prosedur'        =>   $request->prosedur,
            'photo'           =>   $photo_name
        );

        Manajemen_layanan::whereId($request->hidden_id)->update($form_data);

        return response()->json(['success' => 'Data Is successfully updated']);
    
    }

    public function destroy($id)
    {
        $layanan = Manajemen_layanan::findOrFail($id);

        if ($layanan->photo != null) {
            unlink(public_path($layanan->photo));
        }

        Manajemen_layanan::destroy($id);

        return response()->json([
            'success' => true
        ]);
    }

    public function apiLayanan()
    {
        $layanan = Manajemen_layanan::all();

        return Datatables::of($layanan)

            ->addColumn('show_gambar', function ($layanan) {
                if ($layanan->photo == null) {
                    return 'No Image';
                }
                return '<a target="_blank" href="' . url('/upload/photo/' . $layanan->photo) . '"><img class="rounded-square" width="50" height="50" src="' . url('/upload/photo/' . $layanan->photo) . '" alt=""></a>';
            })

            ->addColumn('action', function ($layanan) {
                return 
                '<a onclick="showForm(' . $layanan->id . ')" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i>Show</a> ' .
                '<button type="button" name="edit" id="'.$layanan->id.'" class="edit btn btn-primary btn-sm">Edit</button> ' .
                '<a onclick="deleteData(' . $layanan->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['show_gambar', 'action'])->make(true);
    }
}
