<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Manajemen_template;
use App\Models\Instansi;
use App\Models\Jenis_sk;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class MtemplateController extends Controller
{
    public function index()
    {
    	$instansi = Instansi::all();
    	$jenis_sk = Jenis_sk::all();
    	return view('manajemen-template', [
	    		'instansi' => $instansi,
	    		 'jenis_sk' => $jenis_sk
    		]);
    }

    public function store(Request $request)
    {

    	$file =  $request->file('file');
        $fileNameArr = explode('.',$file->getClientOriginalName());
        $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
        $file->move('upload/documents', $fileName);

        $input = $request->all();

        $input['file'] = $fileName;
        

        Manajemen_template::create($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function update(Request $request, $id)
    {
        $input = $request->all();
        $layanan = Manajemen_template::findOrFail($id);

        $input['gambar'] = $layanan->gambar;

        if ($request->hasFile('gambar')) {
            if ($layanan->gambar != null) {
                unlink(public_path($layanan->gambar));
            }
            $input['gambar'] = '/upload/gambar/' . Str::slug($input['name'], '-') . '.' . $request->gambar->getClientOriginalExtension();
            $request->gambar->move(public_path('/upload/gambar'), $input['gambar']);
        }

        $layanan->update($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function apiTemplate()
    {
        $layanan = Manajemen_template::query();

        $layanan->with('tipeInstansi','tipeJenissk');

        return Datatables::of($layanan)

            ->addColumn('show_file', function ($layanan) {
                if ($layanan->file == null) {
                    return 'No File';
                }
                return '<a target="_blank" href="' . url('upload/documents/'. $layanan->file) . '">'. $layanan->file .'</a>';
            })

            ->addColumn('action', function ($layanan) {
                return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i>Show</a> ' .
                    '<a onclick="editForm(' . $layanan->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData(' . $layanan->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['show_file', 'action'])->make(true);
    }
}
