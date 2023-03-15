<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class MetaPolja extends Model
{
    public $table = 'meta_polja';
    public $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;
}
