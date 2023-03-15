<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;
use TCG\Voyager\Traits\Translatable;

class About_us extends Model
{

    use Translatable;
    protected $translatable = ['opis'];

    public $table = 'about_us';
    public $primaryKey = 'id';
    public $incrementing = true;
    public $timestamps = false;
}
