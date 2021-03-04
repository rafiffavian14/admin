<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Manajemen_tte;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use App\Models\Instansi;
use App\Models\Jenis_sk;

class MtteController extends Controller
{
     public function index()
    {
        $instansi = Instansi::all();
        $jenis_sk = Jenis_sk::all();
    	return view('manajemen-tte', [
                'instansi' => $instansi,
                 'jenis_sk' => $jenis_sk
            ]);
    }

    public function store(Request $request)
    {
        $input = $request->all();
        
        Manajemen_tte::create($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function update(Request $request, $id)
    {
        $input = $request->all();
        $tte = Manajemen_tte::findOrFail($id);

        $tte->update($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function apiTte()
    {
        $tte = Manajemen_tte::all();

        return Datatables::of($tte)


            ->addColumn('action', function ($tte) {
                return '<a href="#" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i>Show</a> ' .
                    '<a onclick="editForm(' . $tte->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData(' . $tte->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['action'])->make(true);
    }
}
