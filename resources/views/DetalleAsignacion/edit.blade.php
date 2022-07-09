@extends('layouts.app')

@section('content')
<div class="container-fluid">
    <div class="row ">
    @include('activos.error')
                {!! Form::model($detalle_asginacions, ['route' => ['asignaciones.update',[
                                                            'IdE'   => $detalle_asginacions[0]->IdE,
                                                            'IdO'   => $detalle_asginacions[0]->IdO,
                                                            'IdD'   => $detalle_asginacions[0]->IdD,
                                                            'IdAct' => $detalle_asginacions[0]->IdAct
                ]],'method' => 'PUT']) !!}
                <livewire:detalle-asignacion /> 
        {!! Form::close() !!}           
    </div>
</div>
@endsection