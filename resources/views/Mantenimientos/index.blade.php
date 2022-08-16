 @extends('layouts.app')
 @section('content')
 <div class="container-fluid shadow-sm p-3 mb-5 bg-white rounded">
     <h1 class="text-info "><strong>Mantenimientos</strong></h1>
     <div class="row">
         <div class="col-md-12">
             <div class="">
                 <a href="{{route('empresas.create')}}" class="btn btn-sm btn-primary col-lg-2">
                     Crear

                 </a>
             </div>
             <div class="panel-body shadow p-3 mb-5 bg-white rounded">
                 <div class="table-responsive-lg">
                     <table id="activos" class="table table-striped table-hover ">
                         <thead>
                             <tr>
                                 <th>ID</th>
                                 <th colspan="3" width="8%">Acciones</th>
                             </tr>
                         </thead>
                         <tbody>

                         </tbody>

                     </table>
                     <div class="d-flex flex-row-reverse px-3">

                     </div>

                 </div>
             </div>
         </div>
     </div>
 </div>
 @endsection
