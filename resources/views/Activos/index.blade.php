 @extends('layouts.app')

 @section('content')
<div class="container-fluid shadow-sm p-3 mb-5 bg-white rounded">
<h1 class="text-info "><strong>Activos</strong></h1> 
    <div class="row">
        <div class="col-md-12">
            <div class="">
                <a href="{{route('activos.create')}}" 
                class="btn btn-sm btn-primary col-lg-2">
                           Crear 
                            <svg width="1.5em" height="1.5em" viewBox="0 0 16 16" class="bi bi-plus" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                        <path fill-rule="evenodd" d="M8 4a.5.5 0 0 1 .5.5v3h3a.5.5 0 0 1 0 1h-3v3a.5.5 0 0 1-1 0v-3h-3a.5.5 0 0 1 0-1h3v-3A.5.5 0 0 1 8 4z"/>
                                </svg>
                            </a>
                    
                </div>

                <div class="panel-body shadow p-3 mb-5 bg-white rounded">
                <div class="table-responsive-lg">
                    <table id="activos" class="table table-striped table-hover ">
                        <thead>
                           <tr> 
                                <th width="40px">ID</th>
                                <th>Codigo</th>
                                <th>Nombre de Activo</th>
                                <th>Marca</th>
                                <th>Modelo</th>
                                <th>Nroserial</th>
                                <th>Oficina</th>
                                <th>Condicion</th>
                                <th>UsuarioAsig</th>
                                <th>Observaciones</th>
                                <th>Capturas Recursos</th>
                                <th>Empresa</th>
                                <th colspan="3" width="12%">Acciones</th>
                            </tr>
                            </thead>
                        <tbody>
                            @foreach($activos as $activo)
                                <tr>
                                    <td>{{$activo->id}}</td>
                                    <td>{{$activo->Codigo}}</td>
                                    <td>{{$activo->NombreActivo}}</td>
                                    <td>{{$activo->Marca}}</td>
                                    <td>{{$activo->Modelo}}</td>
                                    <td>{{$activo->NroSerial}}</td>
                                    <td>{{$activo->Oficina}}</td>
                                    <td>{{$activo->Condicion}}</td>
                                    <td>{{$activo->UsuarioAsig}}</td>
                                    <td>{{$activo->Observaciones}}</td>
                                    <td>{{$activo->CapRecursos}}</td>
                                    <td>{{$activo->Empresa}}</td>

                                
                                    <td class="fly">
                                       
                                            <a href="{{route('activos.show', $activo->id)}}" 
                                                    class="btn-sm btn btn-success">
                                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-eye-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                    <path d="M10.5 8a2.5 2.5 0 1 1-5 0 2.5 2.5 0 0 1 5 0z"/>
                                                    <path fill-rule="evenodd" d="M0 8s3-5.5 8-5.5S16 8 16 8s-3 5.5-8 5.5S0 8 0 8zm8 3.5a3.5 3.5 0 1 0 0-7 3.5 3.5 0 0 0 0 7z"/>
                                                </svg>
                                        </a>
                                       
                                    </td>
                                    <td class="fly px-0">
                                        
                                            <a href="{{route('activos.edit', $activo->id)}}" 
                                                    class="btn-sm btn btn btn-warning">
                                                <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-pencil-square" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                     <path d="M15.502 1.94a.5.5 0 0 1 0 .706L14.459 3.69l-2-2L13.502.646a.5.5 0 0 1 .707 0l1.293 1.293zm-1.75 2.456l-2-2L4.939 9.21a.5.5 0 0 0-.121.196l-.805 2.414a.25.25 0 0 0 .316.316l2.414-.805a.5.5 0 0 0 .196-.12l6.813-6.814z"/>
                                                    <path fill-rule="evenodd" d="M1 13.5A1.5 1.5 0 0 0 2.5 15h11a1.5 1.5 0 0 0 1.5-1.5v-6a.5.5 0 0 0-1 0v6a.5.5 0 0 1-.5.5h-11a.5.5 0 0 1-.5-.5v-11a.5.5 0 0 1 .5-.5H9a.5.5 0 0 0 0-1H2.5A1.5 1.5 0 0 0 1 2.5v11z"/>
                                                </svg>
                                        </a>
                                        
                                    </td>
                                    <td class="fly">
                                       
                                             {!! Form::open(['route' => ['activos.destroy', $activo->id],
                                               'method' => 'DELETE']) !!}

                                                    <button class="btn btn-sm btn-danger">
                                                       <svg width="1em" height="1em" viewBox="0 0 16 16" class="bi bi-trash-fill" fill="currentColor" xmlns="http://www.w3.org/2000/svg">
                                                            <path fill-rule="evenodd" d="M2.5 1a1 1 0 0 0-1 1v1a1 1 0 0 0 1 1H3v9a2 2 0 0 0 2 2h6a2 2 0 0 0 2-2V4h.5a1 1 0 0 0 1-1V2a1 1 0 0 0-1-1H10a1 1 0 0 0-1-1H7a1 1 0 0 0-1 1H2.5zm3 4a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7a.5.5 0 0 1 .5-.5zM8 5a.5.5 0 0 1 .5.5v7a.5.5 0 0 1-1 0v-7A.5.5 0 0 1 8 5zm3 .5a.5.5 0 0 0-1 0v7a.5.5 0 0 0 1 0v-7z"/>
                                                        </svg>
                                                    </button>
                                            
                                            {!!Form::close() !!}
                                    
                                       
                                    </td>
                                </tr>
                            @endforeach
                        </tbody>
                        
                    </table>
                    <div class="d-flex flex-row-reverse px-3">
                        {{$activos->render()}}
                    </div>
                    
                </div>
                </div>
            </div>
        </div>
</div>
@endsection 



