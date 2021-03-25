<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Manajemen_tte extends Model
{
    use HasFactory;
    
    protected $table = "manajemen_tte";


    protected $fillable = ['posisi',
     					   'spesimen',
     					   'nik',
     					   'nama',
     					   'nip',
     					   'paraf_pi',
     					   'paraf_kp',
     					   'paraf_peremajaan',
     					   'ttd_pi',
     					   'ttd_kp',
     					   'ttd_peremajaan'
     					];
}

