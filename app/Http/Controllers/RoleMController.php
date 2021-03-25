<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Manajemen_tte;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use App\Models\Instansi;
use App\Models\Jenis_sk;
use App\Models\Jenis_pertek;

class RoleMController extends Controller
{
     public function index()
    {
        $instansi = Instansi::all();
        $jenis_sk = Jenis_sk::all();
        $jenis_pertek = Jenis_pertek::all();

    	return view('role-mapping', [
                'instansi' => $instansi,
                'jenis_sk' => $jenis_sk,
                'jenis_pertek' => $jenis_pertek,
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

    public function edit($id)
    {
        $tte = Manajemen_tte::findorFail($id);
        return $tte;
    }

    public function show($id)
    {
        $tte = Manajemen_tte::findorFail($id);

        return $tte;
    }

    public function update(Request $request, $id)
    {
        // $input = $request->all();
        // $tte = Manajemen_tte::findOrFail($id);

        // $tte->update($input);

        Manajemen_tte::where('id', $id)->update([

            'posisi'   => $request->posisi,
            'spesimen' => $request->spesimen,
            'nik'      => $request->nik,
            'nama'     => $request->nama,
            'nip'      => $request->nip,

        ]);

        return response()->json([
            'success' => true
        ]);
    }


    public function apiMapping()
    {
        $tte = Manajemen_tte::all();

        return Datatables::of($tte)


            ->addColumn('action', function ($tte) {
                return
                    '<a onclick="editForm(' . $tte->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' ;
            })->addIndexColumn()->rawColumns(['action'])->make(true);
    }
}