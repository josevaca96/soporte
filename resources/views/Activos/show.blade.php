@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Activos</div>

                <div class="card-body">
                        <p><strong>Codigo:</strong>{{$activo->Codigo}}</p>
                        <p><strong>Nombre de activo:</strong>{{$activo->NombreActivo}}</p>
                        <p><strong>Marca:</strong>{{$activo->Marca}}</p>
                        <p><strong>Modelo:</strong>{{$activo->Modelo}}</p>
                        <p><strong>Numero de Serial:</strong>{{$activo->NroSerial}}</p>
                        <p><strong>Oficina:</strong>{{$activo->Oficina}}</p>
                        <p><strong>Condicion:</strong>{{$activo->Condicion}}</p>
                        <p><strong>Usuario Asignado:</strong>{{$activo->UsuarioAsig}}</p>
                        <p><strong>Observaciones:</strong>{{$activo->Observaciones}}</p>
                        <p><strong>Captura de Recursos:</strong>{{$activo->CapRecursos}}</p>
                        <p><strong>Empresa:</strong>{{$activo->Empresa}}</p>
                        
                </div>
            </div>
        </div>
    </div>
</div>
@endsection