<?php

namespace App;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Empresa extends Model
{
    use SoftDeletes; 
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'Nombre',
        'IdDpto',
    ];
    public $timestamps =false;
}
