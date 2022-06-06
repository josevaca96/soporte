@extends('layouts.app')

@section('content')
<div class="container">
    <div class="row justify-content-center">
        <div class="col-md-8">
            <div class="card shadow-lg p-3 mb-5 bg-body rounded">
                <div class="card-header">Activos</div>

                <div class="">
                    
                            <a href="{{route('activos.index')}}" 
                                class="btn btn-sm btn-primary col-lg-2">
                                    <--volver
                                <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                </svg>
                            </a>
                    
                </div>


                <div class="card-body p">
                @include('activos.error')
                       {!! Form::open( ['route' => 'activos.store']) !!}
                            @include('activos.partials.form')
                        {!! Form::close() !!} 

                        
                </div>
            </div>
        </div>
    </div>
</div>
@endsection