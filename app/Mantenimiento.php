<?php

namespace App;
use Illuminate\Database\Eloquent\SoftDeletes;
use Illuminate\Database\Eloquent\Model;

class Mantenimiento extends Model
{
    use SoftDeletes;
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'IdActivo',
        'FechaInicial',
        'FechaProximo',
        'Descripcion',
        'Test',
    ];
    public $timestamps =false;

}
