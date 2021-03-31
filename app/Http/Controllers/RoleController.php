<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Role;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use App\Models\Instansi;
use App\Models\Jenis_sk;
use App\Models\Jenis_pertek;
use Illuminate\Support\Facades\Http;
use Validator;

class RoleController extends Controller
{

    
     public function index(Request $request)
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

   

    public function delete($id)
    {
       Role::destroy($id);

        return response()->json([
            'success' => true
        ]);
    }

    public function apiRole()
    {
        // diabwah ini kodingan menggunaka API client,tetapi masih pakai cara manual dan ada errornya

            // $token = 'eyJhbGciOiJSUzI1NiIsInR5cCIgOiAiSldUIiwia2lkIiA6ICJQZXBwaVZsWHRCX3lOa3VQdlp4MXctWjJUVnpoTU5yUm5xaHUzS2JDNXFrIn0.eyJleHAiOjE2MTY5OTMxOTMsImlhdCI6MTYxNjk5MzEzMywianRpIjoiMzNmNGJlZDQtZDUyMS00MmRmLTlmNTgtMWJiNzgwMTUwYjQ2IiwiaXNzIjoiaHR0cDovL2lhbS5zaWFzbi5pbmZvL2F1dGgvcmVhbG1zL21hc3RlciIsInN1YiI6IjE5OTgwNTNmLTA2M2QtNDA4NC1iYTFlLTM2NWNmNjI0YjYzMSIsInR5cCI6IkJlYXJlciIsImF6cCI6ImFkbWluLWNsaSIsInNlc3Npb25fc3RhdGUiOiJhZTU0YjZjMC04ZDAyLTQ3OWMtODgyYi02NTgzYmMzZTQyMjkiLCJhY3IiOiIxIiwic2NvcGUiOiJwcm9maWxlIGVtYWlsIiwiZW1haWxfdmVyaWZpZWQiOmZhbHNlLCJwcmVmZXJyZWRfdXNlcm5hbWUiOiJhZG1pbiJ9.lp3PQ0GZb5cO1k_MVe75rBfFzd7HsyFZKDDAd-l3j7_nHpeuRZZ3kjWqGumRXWqkBgA_KZ2m-BJvSdgdmt70KWpcc7xj3DsWpEOlKEdoPlLVXbJsvADWajzUlnf5pxGpUg6fuWUMaIABEbqNXLc6BYIugyT9OHYHz6n1v3pkWLUHyw-AEzzFhUGtNvtKYlhTZow9NinLn-sMYCQzEgcBb5pJex7psdTifbKEK_BRAR4oSU965deGwA3hxOaF720F9a0-07-DkXJkbU54KYdtoe-1jSjAnPXDBaUzcbK_xLDhCK4pILHI_3bfhVt5u9vPBmo1txXcaH2GpOhHT1fTcg';

            

            // $role = Http::withToken($token)->get('http://iam.siasn.info/auth/admin/realms/hello-world-authz/roles');

            // $roles = json_decode($role, true);

        $role =Role::all(); //datanya harus ngambil dari API. kalau belum ke ambil,bakalan error, karena gaada tabel Role di databasenya.

        return Datatables::of($role)


            ->addColumn('action', function ($role) {
                return 
                    
                    '<a onclick="deleteData(' . $role->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';

            })->addIndexColumn()->rawColumns(['action'])->make(true);
    }
}