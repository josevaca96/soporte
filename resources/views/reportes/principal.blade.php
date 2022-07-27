
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
    <script>
        $("#tags").autocomplete({
            source: function(request , response){
                $.ajax({
                    url: "{{route('reporte-usuario_asig.index')}}",
                    dataType: 'json',
                    data:{
                        term : request.term 
                    },
                    success: function(data){
                      response(data)  
                    }
                });   
            }
        });
    </script>
</head>

<body>

    <div class="container pt-5">
        <h1>Reportes</h1>
        <div class="row pt-5">
            <div class="col-3">
                <label for="tags">Usuario asignado: </label>
                <input id="tags" class="form-control" placeholder="Escriba un usuario..">
            </div>
            <div class="col-3">
                <label for="tags">Empresa: </label>
                <select name="empresa" id="" class="form-control">
                    <option value="">todas las empresas</option>
                    <option value="">empresa1</option>
                    <option value="">empresa2</option>
                </select>
            </div>
            <div class="col-2">
                <label for="tags">Activo: </label>
                <select name="empresa" id="" class="form-control">
                    <option value="">Todos los activos</option>
                    <option value="">Monitor</option>
                    <option value="">Pc-Escritorio</option>
                </select>
            </div>
            <div class="col-3">
                <label for="tags">Fecha De Asignación: </label>
                {{Form::date('fecha_f',null,['class' => 'form-control'])}}
            </div>
            <div class="col-1" style="padding-top:26px;">
                <button class="btn btn-sm btn-primary">Buscar</button>
            </div> 
        </div>
        <br>

        <div class="p-2 card">
            <p class="text-secondary">Resultado del Filtro</p>
            <div class="table-responsive-lg">
                     <table id="activos" class="table table-striped table-hover ">
                         <thead>
                             <tr>
                                 <th>ID</th>
                                 <th>Nombre</th>
                                 <th>Descripción</th>
                                 <th colspan="3" width="8%">Acciones</th>
                             </tr>
                         </thead>
                         <tbody>
                            
                             <tr>
                            
                             </tr>
                             
                         </tbody>

                     </table>
                 </div>
        </div>
    </div>
    
</body>

</html>