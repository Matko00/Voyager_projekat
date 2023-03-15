<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Stranice extends Model
{
    public $table = 'stranice';
    public $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;
}
