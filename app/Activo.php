<?php

namespace App;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\SoftDeletes;
use\App\Activo;
class Activo extends Model
{
    use SoftDeletes; 
    protected $dates = ['deleted_at'];
    protected $fillable = [
        'Codigo', 
        'NombreActivo',
        'Marca',
        'Modelo',
        'NroSerial',
        'Oficina',
        'Condicion',
        'UsuarioAsig',
        'Observaciones',
        'CapRecursos',
        'Empresa',
    ];
    public $timestamps =false;
}
