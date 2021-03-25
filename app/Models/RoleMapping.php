<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class RoleMapping extends Model
{
    use HasFactory;
    
    protected $table = "manajemen_tte";

    protected $fillable = ['posisi', 'spesimen', 'nik', 'nama', 'nip'];
}