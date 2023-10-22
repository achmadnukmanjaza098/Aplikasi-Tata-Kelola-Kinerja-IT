<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class TbPengguna extends Model
{
    use HasFactory;
    protected $fillable = [
        'user_id',
        'username',
        'password',
        'hak_akses',
    ];
}
