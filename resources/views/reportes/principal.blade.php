<!doctype html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Reporte</title>
    <link rel="stylesheet" href="//code.jquery.com/ui/1.13.2/themes/base/jquery-ui.css">
    <!-- <link rel="stylesheet" href="/resources/demos/style.css"> -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet"
        integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.6.0.js"></script>
    <script src="https://code.jquery.com/ui/1.13.2/jquery-ui.js"></script>
    <script src="{{asset('js/reporte.js')}}"></script>
    <script>
    $(function() {
        $('#tags').autocomplete({
            source: function(request, response) {
                $.ajax({
                    url: "{{route('reporteg')}}",
                    dataType: 'json',
                    data: {
                        term: request.term
                    },
                    success: function(data) {
                        response(data)
                    }
                });
            }
        });
    });
    </script>
</head>

<body>

    <div class="container pt-5">
        <h1>Reportes</h1>
        <div class="row pt-5">
            <form class="d-flex" action="{{route('mostrar_reporte.index')}}" method="get">
                <div class="col-3 p-2">
                    <label for="tags">Usuario asignado: </label>
                    <!-- <form action=""> -->
                    <input id="tags" name="usuario_asig" class="form-control" placeholder="Escriba un usuario..">
                    <label><input type="checkbox" id="check_all" onclick="verificar()"> Todos Los Usuarios</label>
                    <!-- </form> -->

                </div>
                <div class="col-3 p-2">
                    <label for="tags">Empresa: </label>
                    <select name="empresa" id="" class="form-control">
                        <option value="">todas las empresas</option>
                        @foreach($empresas as $empresa)
                        <option value="{{$empresa->id}}">{{$empresa->Nombre}}</option>
                        @endforeach
                    </select>
                </div>
                <div class="col-2 p-2">
                    <label for="tags">Activo: </label>
                    <select name="activo" id="" class="form-control">
                        <option value="">Todos los activos</option>
                        @foreach($tipo_activos as $tipo_activo)
                        <option value="{{$tipo_activo->id}}">{{$tipo_activo->Nombre}}</option>
                        @endforeach
                    </select>
                </div>
                <!-- <div class="col-3">
                <label for="tags">Fecha De Asignación: </label>
                {{Form::date('fecha_f',null,['class' => 'form-control'])}}
                </div> -->
                <div class="col-1 " style="padding-top:35px;" >
                    <button class="btn btn-sm btn-primary" type="submit">Buscar</button>
                </div>
            </form>
        </div>
        
        <br>

        <div class="p-2 card">
            <p class="text-secondary">Resultado del Filtro</p>
            <div class="table-responsive-lg">
                <table id="activos" class="table table-striped table-hover ">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Activo</th>
                            <th>usuario</th>
                            <th>empresa</th>
                        </tr>
                    </thead>
                    <tbody>
                    @foreach($reportes as $reporte)
                             <tr>
                                 <td>{{$reporte->Codigo}}</td>
                                 <td>{{$reporte->activo}}</td>
                                 <td>{{$reporte->UsuarioAsig}}</td>
                                 <td>{{$reporte->empresa}}</td>
                             </tr>
                             @endforeach
                    </tbody>

                </table>
            </div>
        </div>
    </div>

</body>

</html>