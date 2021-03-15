<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Manajemen_pertek;
use App\Models\Jenis_pertek;
use App\Models\Instansi;
use App\Models\Jenis_sk;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use Illuminate\Support\Facades\File;

class MpertekController extends Controller
{
    public function index()
    {
    	$jenis_pertek = Jenis_pertek::all();
    	$instansi = Instansi::all();
    	$jenis_sk = Jenis_sk::all();
    	return view('manajemen-pertek', [

	    		'jenis_pertek' => $jenis_pertek,
	    		'instansi' => $instansi,
	    		'jenis_sk' => $jenis_sk
	    		 
    		]);
    }

    public function store(Request $request)
    {
        $input = $request->all();
        $input['jrxml'] = null;
        $input['json'] = null;

    if ($request->hasFile('jrxml')) {
        	$file =  $request->file('jrxml');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $input['jrxml'] = $fileName;
            $request->jrxml->move(public_path('/upload/jrxml'), $input['jrxml']);

        }
    
    if ($request->hasFile('json')) {
        	$file =  $request->file('json');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $input['json'] = $fileName;
            $request->json->move(public_path('/upload/json'), $input['json']);

        }
            

        Manajemen_pertek::create($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function update(Request $request, $id)
    {
        $input = $request->all();
        $pertek = Manajemen_pertek::findOrFail($id);

        $input['jrxml'] = $pertek->jrxml;

        if ($request->hasFile('jrxml')) {
            if ($pertek->jrxml != null) {
                unlink(public_path('upload/jrxml/'. $pertek->jrxml));
            }

            $file =  $request->file('jrxml');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $file->move('upload/jrxml', $fileName);

            $input['jrxml'] = $fileName;

        }

        $input['json'] = $pertek->json;

        if ($request->hasFile('json')) {
            if ($pertek->json != null) {
                unlink(public_path('upload/json/'. $pertek->json));
            }

            $file =  $request->file('json');
            $fileNameArr = explode('.',$file->getClientOriginalName());
            $fileName = $fileNameArr[0] . '-' . time() . '.' . $fileNameArr[1];
            $file->move('upload/json', $fileName);

            $input['json'] = $fileName;

        }

        $pertek->update($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function delete($id)
    {
        $pertek = Manajemen_pertek::findOrFail($id);

        if ($pertek->jrxml != null) {

            unlink(public_path('upload/jrxml/' . $pertek->jrxml));
        }

        if ($pertek->json != null) {

        	unlink(public_path('upload/json/' . $pertek->json));
        }

        Manajemen_pertek::destroy($id);
    }

    public function edit($id)
    {
        $pertek = Manajemen_pertek::find($id);
        $jenis_pertek = $pertek->tipePertek;

        return $pertek;
        return $jenis_pertek;
        
    }

    public function show($id)
    {
        $pertek = Manajemen_pertek::find($id);
        $jenis_pertek = $pertek->tipePertek;

        return $pertek;
        return $jenis_pertek;
    }

    public function apiPertek()
    {
        $pertek = Manajemen_pertek::query();

        $pertek->with('tipePertek');

        return Datatables::of($pertek)

            ->addColumn('show_jrxml', function ($pertek) {
                if ($pertek->jrxml == null) {
                    return 'No File Upload';
                }
                return '<a target="_blank" href="' . url('upload/jrxml/'. $pertek->jrxml) . '">'. $pertek->jrxml .'</a>';
            })

            ->addColumn('show_json', function ($pertek) {
                if ($pertek->json == null) {
                    return 'No File Upload';
                }
                return '<a target="_blank" href="' . url('upload/json/'. $pertek->json) . '">'. $pertek->json .'</a>';
            })

            ->addColumn('action', function ($pertek) {
                return '<a onclick="showForm(' . $pertek->id . ')" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i>Show</a> ' .
                    '<a onclick="editForm(' . $pertek->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData(' . $pertek->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['show_jrxml', 'show_json', 'action'])->make(true);
    }
}
