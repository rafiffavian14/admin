<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\RoleMapping;
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
        
       RoleMapping::create($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function edit($id)
    {
        $mapping =RoleMapping::findorFail($id);
        return $mapping;
    }

    public function update(Request $request, $id)
    {
        // $input = $request->all();
        // $tte =Role::findOrFail($id);

        // $tte->update($input);

       RoleMapping::where('id', $id)->update([

            'posisi'   => $request->posisi,
            'spesimen' => $request->spesimen,

        ]);

        return response()->json([
            'success' => true
        ]);
    }

    public function delete($id)
    {
       RoleMapping::destroy($id);

        return response()->json([
            'success' => true
        ]);
    }

    public function apiMapping()
    {
        $mapping =RoleMapping::all();

        return Datatables::of($mapping)


            ->addColumn('action', function ($mapping) {
                return 
                    '<a onclick="editForm(' . $mapping->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData(' . $mapping->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['action'])->make(true);
    }
}