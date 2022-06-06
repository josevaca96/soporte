@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card">
                <div class="card-header">Activo</div>

                <div class="card-body">
                @include('activos.error')
                       {!! Form::model($activo, ['route' => ['activos.update', $activo->id],
                         'method' => 'PUT']) !!}

                            @include('activos.partials.form')

                        {!! Form::close() !!} 
                </div>
            </div>
        </div>  
    </div>
</div>
@endsection