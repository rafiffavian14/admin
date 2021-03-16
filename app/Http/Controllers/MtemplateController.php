<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Manajemen_template;
use App\Models\Instansi;
use App\Models\Jenis_sk;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;
use App\Models\Jenis_pertek;

class MtemplateController extends Controller
{
    public function index()
    {
    	$instansi = Instansi::all();
    	$jenis_sk = Jenis_sk::all();
        $jenis_pertek = Jenis_pertek::all();
    	return view('manajemen-template', [
	    		'instansi' => $instansi,
	    		 'jenis_sk' => $jenis_sk,
                 'jenis_pertek' => $jenis_pertek,
    		]);
    }

    public function store(Request $request)
    {
        $input = $request->all();
        $input['file'] = null;

    if ($request->hasFile('file')) {
        	$file =  $request->file('file');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $input['file'] = $fileName;
            $request->file->move(public_path('/upload/documents'), $input['file']);

        }
        

        Manajemen_template::create($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function update(Request $request, $id)
    {
        $input = $request->all();
        $template = Manajemen_template::findOrFail($id);

        $input['file'] = $template->file;

        if ($request->hasFile('file')) {
            if ($template->file != null) {
                unlink(public_path('upload/documents/'. $template->file));
            }

            $file =  $request->file('file');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $file->move('upload/documents', $fileName);

            $input['file'] = $fileName;

        }

        $template->update($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function delete($id)
    {
        $template = Manajemen_template::findOrFail($id);

        if ($template->file != null) {

            unlink(public_path($template->file));
        }

        Manajemen_template::destroy($id);
    }

    public function edit($id)
    {
        $template = Manajemen_template::find($id);
        $tipe_instansi = $template->tipeInstansi;
        $tipe_jenis_sk = $template->tipeJenissk;


        return $template;
        return $tipe_instansi;
        return $tipe_jenis_sk;
    }

    public function show($id)
    {
        $template = Manajemen_template::find($id);
        $tipe_instansi = $template->tipeInstansi;
        $tipe_jenis_sk = $template->tipeJenissk;


        return $template;
        return $tipe_instansi;
        return $tipe_jenis_sk;
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
                return '<a onclick="showForm(' . $layanan->id . ')" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i>Show</a> ' .
                    '<a onclick="editForm(' . $layanan->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData(' . $layanan->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['show_file', 'action'])->make(true);
    }
}
