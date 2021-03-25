<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Role;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use App\Models\Instansi;
use App\Models\Jenis_sk;
use App\Models\Jenis_pertek;

class RoleController extends Controller
{
     public function index()
    {
        $instansi = Instansi::all();
        $jenis_sk = Jenis_sk::all();
        $jenis_pertek = Jenis_pertek::all();

    	return view('role', [
                'instansi' => $instansi,
                'jenis_sk' => $jenis_sk,
                'jenis_pertek' => $jenis_pertek,
            ]);
    }

    public function store(Request $request)
    {
        $input = $request->all();
        
       Role::create($input);

        return response()->json([
            'success' => true
        ]);
    }

    public function edit($id)
    {
        $role =Role::findorFail($id);
        return $role;
    }

    public function update(Request $request, $id)
    {
        // $input = $request->all();
        // $tte =Role::findOrFail($id);

        // $tte->update($input);

       Role::where('id', $id)->update([

            'posisi'   => $request->posisi,
            'spesimen' => $request->spesimen,

        ]);

        return response()->json([
            'success' => true
        ]);
    }

    public function delete($id)
    {
       Role::destroy($id);

        return response()->json([
            'success' => true
        ]);
    }

    public function apiTte()
    {
        $role =Role::all();

        return Datatables::of($role)


            ->addColumn('action', function ($role) {
                return 
                    '<a onclick="editForm(' . $role->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData(' . $role->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['action'])->make(true);
    }
}