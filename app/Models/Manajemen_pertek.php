<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Manajemen_pertek extends Model
{
    use HasFactory;

    protected $table = "manajemen_pertek";

    protected $fillable = ['id_jenis_pertek', 'deskripsi', 'jrxml', 'json', 'tanggal_versi'];	

    public function tipePertek()
    {
        return $this->belongsTo(Jenis_pertek::class,'id_jenis_pertek');
    }
    
}
