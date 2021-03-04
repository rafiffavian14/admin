<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Manajemen_template extends Model
{
    use HasFactory;

    protected $table = "manajemen_template";

    protected $fillable = ['id_instansi', 'file', 'id_jenis_sk'];	

    public function tipeInstansi()
    {
        return $this->belongsTo(Instansi::class,'id_instansi');
    }
    public function tipeJenissk()
    {
        return $this->belongsTo(Jenis_sk::class, 'id_jenis_sk');
    }
}
