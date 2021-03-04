<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Manajemen_layanan;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use App\Models\Instansi;
use App\Models\Jenis_sk;

class MlayananController extends Controller
{
    public function index()
    {
        $instansi = Instansi::all();
        $jenis_sk = Jenis_sk::all();
    	return view('manajemen-layanan', [
                'instansi' => $instansi,
                 'jenis_sk' => $jenis_sk
            ]);
    }

    public function store(Request $request)
    {
        $input = $request->all();
        $input['photo'] = null;

        // $file =  $request->file('image');
        // $fileNameArr = explode('.',$file->getClientOriginalName());
        // $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
        // $file->move('userimage', $fileName);

        if ($request->hasFile('photo')) {
            $file =  $request->file('photo');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $input['photo'] = '/upload/photo/' . $fileName;
            $request->photo->move(public_path('/upload/photo'), $input['photo']);
        }


        Manajemen_layanan::create($input);

        return response()->json([
            'success' => true
        ]);
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

    public function update(Request $request, $id)
    {
        $input = $request->all();
        $layanan = Manajemen_layanan::findOrFail($id);

        $input['photo'] = $layanan->photo;

        if ($request->hasFile('photo')) {
            if ($layanan->photo != null) {
                unlink(public_path($layanan->photo));
            }
            $file =  $request->file('photo');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $input['photo'] = '/upload/photo/' . $fileName;
            $request->photo->move(public_path('/upload/photo'), $input['photo']);
        }

        $layanan->update($input);

        return response()->json([
            'success' => true
        ]);
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
                return '<img class="rounded-square" width="50" height="50" src="' . url($layanan->photo) . '" alt="">';
            })

            ->addColumn('action', function ($layanan) {
                return '<a onclick="showForm(' . $layanan->id . ')" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i>Show</a> ' .
                    '<a onclick="editForm(' . $layanan->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData(' . $layanan->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['show_gambar', 'action'])->make(true);
    }
}
