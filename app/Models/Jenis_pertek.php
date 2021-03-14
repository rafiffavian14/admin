<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Jenis_pertek extends Model
{
    use HasFactory;

    protected $table = "jenis_pertek";

    protected $fillable = ['name'];
}
