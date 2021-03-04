<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Manajemen_layanan extends Model
{
    use HasFactory;

    protected $table = "manajemen_layanan";

    protected $fillable = ['daftar_layanan', 'prosedur', 'photo'];
}
