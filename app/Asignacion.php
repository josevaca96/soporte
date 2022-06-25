<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Asignacion extends Model
{
    use SoftDeletes; 
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'IdE',
        'IdO',
        'IdAct',
        'fecha_i',
        'fecha_f',
        'CapRecursos',
        'UsuarioAsig',
        'telefono_asig',
        'Observaciones',
    ];
    public $timestamps =false;

}
