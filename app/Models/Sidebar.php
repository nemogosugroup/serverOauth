<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

use Illuminate\Support\Facades\DB;

class Sidebar extends Model
{
    use HasFactory;
    protected $table = 'sidebar';

    protected $fillable = [
        'name',
        'access',
        'parent',
        'link',
        'type',
        'status',
        'slug',
    ];
    
}
