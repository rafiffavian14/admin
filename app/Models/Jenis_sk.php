<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jenis_sk extends Model
{
    use HasFactory;

    protected $table = "jenis_sk";

    protected $fillable = ['name'];
}
