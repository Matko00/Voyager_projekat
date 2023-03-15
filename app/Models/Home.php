<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Home extends Model
{
    use Translatable;
    protected $translatable = ['pocetna_stranica', 'title'];
    public $table = 'home';
    public $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;
}
