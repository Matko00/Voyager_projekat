<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class Contact extends Model
{
    use Translatable;
    protected $translatable = ['osoba', 'broj_telefona', 'grad'];
    
    public $table = 'contact';
    public $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;
}
