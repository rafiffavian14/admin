<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Models\Manajemen_tte;
use Yajra\DataTables\datatables;
use Illuminate\Support\Str;
use App\Models\Instansi;
use App\Models\Jenis_sk;
use App\Models\Jenis_pertek;

class MtteController extends Controller
{
     public function index()
    {
        $instansi = Instansi::all();
        $jenis_sk = Jenis_sk::all();
        $jenis_pertek = Jenis_pertek::all();

    	return view('manajemen-tte', [
                'instansi'     => $instansi,
                'jenis_sk'     => $jenis_sk,
                'jenis_pertek' => $jenis_pertek,
            ]);
    }

    public function store(Request $request)
    {
        // $input = $request->all();

        // Manajemen_tte::create($input);

        // return response()->json([
        //     'success' => true
        // ]);

        $tte = new Manajemen_tte;

        $tte->posisi = $request->input('posisi');
        $tte->spesimen = $request->input('spesimen');
        $tte->nik = $request->input('nik');
        $tte->nama = $request->input('nama');
        $tte->nip = $request->input('nip');

        $tte->paraf_pi = $request->input('paraf_pi') ?? 0;
        $tte->paraf_kp = $request->input('paraf_kp') ?? 0;
        $tte->paraf_peremajaan = $request->input('paraf_peremajaan') ?? 0;

        $tte->ttd_pi = $request->input('ttd_pi') ?? 0;
        $tte->ttd_kp = $request->input('ttd_kp') ?? 0;
        $tte->ttd_peremajaan = $request->input('ttd_peremajaan') ?? 0;

        $tte->save();
    }

    public function edit($id)
    {
        $tte = Manajemen_tte::findorFail($id);

        $paraf_pi         = $tte->paraf_pi;
        $paraf_kp         = $tte->paraf_kp;
        $paraf_peremajaan = $tte->paraf_peremajaan;

        $ttd_pi         = $tte->ttd_pi;
        $ttd_kp         = $tte->ttd_kp;
        $ttd_peremajaan = $tte->ttd_peremajaan;


        return $tte;

        // return view('form', [

        //     'paraf_pi'         => $paraf_pi,
        //     'paraf_kp'         => $paraf_kp,
        //     'paraf_peremajaan' => $paraf_peremajaan,
        // ]);
    }

    public function show($id)
    {
        $tte = Manajemen_tte::findorFail($id);

        return $tte;
    }

    public function update(Request $request, $id=2)
    {
        // $input = $request->all();
        // $tte = Manajemen_tte::findOrFail($id);

        // $tte->update($input);

        // Manajemen_tte::where('id', $id)->update([

        //     'posisi'                => $request->posisi,
        //     'spesimen'              => $request->spesimen,
        //     'nik'                   => $request->nik,
        //     'nama'                  => $request->nama,
        //     'nip'                   => $request->nip,
        //     'paraf_pi'              => $request->paraf_pi,
        //     'paraf_kp'              => $request->paraf_kp,
        //     'paraf_peremajaan'      => $request->paraf_peremajaan,
        //     'ttd_pi'                => $request->ttd_pi,
        //     'ttd_kp'                => $request->ttd_kp,
        //     'ttd_peremajaan'        => $request->ttd_peremajaan,

        // ]);

        // $input = $request->all();

        // $manajemen_tte = Manajemen_tte::findOrFail($id);

        // $manajemen_tte->update($input);

        $tte = Manajemen_tte::find($id);

        $tte->posisi = $request->input('posisi');
        $tte->spesimen = $request->input('spesimen');
        $tte->nik = $request->input('nik');
        $tte->nama = $request->input('nama');
        $tte->nip = $request->input('nip');

        $tte->paraf_pi = $request->input('paraf_pi') ?? 0;
        $tte->paraf_kp = $request->input('paraf_kp') ?? 0;
        $tte->paraf_peremajaan = $request->input('paraf_peremajaan') ?? 0;

        $tte->ttd_pi = $request->input('ttd_pi') ?? 0;
        $tte->ttd_kp = $request->input('ttd_kp') ?? 0;
        $tte->ttd_peremajaan = $request->input('ttd_peremajaan') ?? 0;

        $tte->save();

        // return $tte;

        return response()->json([
            'success' => true
        ]);
    }

    public function delete($id)
    {
        Manajemen_tte::destroy($id);

        return response()->json([
            'success' => true
        ]);
    }

    public function apiTte()
    {
        $tte = Manajemen_tte::all();

        return Datatables::of($tte)


            ->addColumn('action', function ($tte) {
                return '<a onclick="showForm(' . $tte->id . ')" class="btn btn-info btn-xs"><i class="glyphicon glyphicon-eye-open"></i>Show</a> ' .
                    '<a onclick="editForm(' . $tte->id . ')" class="btn btn-primary btn-xs"><i class="glyphicon glyphicon-edit"></i> Edit</a> ' .
                    '<a onclick="deleteData(' . $tte->id . ')" class="btn btn-danger btn-xs"><i class="glyphicon glyphicon-trash"></i> Delete</a>';
            })->addIndexColumn()->rawColumns(['action'])->make(true);
    }
}
