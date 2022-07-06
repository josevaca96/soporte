@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row ">
    @include('activos.error')
                       {!! Form::model($asignacion, ['route' => ['asignaciones.update',[
                                                            'IdE'   => $detalle_asginacion->IdE,
                                                            'IdO'   => $detalle_asginacion->IdO,
                                                            'IdD'   => $detalle_asginacion->IdD,
                                                            'IdAct' => $detalle_asginacion->IdAct
                        ]],
                         'method' => 'PUT']) !!}
                         <livewire:detalle-asignacion/>
                        {!! Form::close() !!}           
    </div>
</div>
@endsection