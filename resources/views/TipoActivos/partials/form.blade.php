
<div class="text-center">
    <h1 class="pt-5 t-principal m-0">Fomulario  Tipo de Activos</h1>
</div>
<hr>
<div class="row pt-4">
    <div class="col-lg-6 col-sm-12">
        <div class="form-group">
            
            {{ Form::label('nombre', 'Nombre') }}
            {{ Form::text('Nombre',null, ['class' => 'form-control']) }}
        </div>
    </div>
    <div class="col-lg-6 col-sm-12">
        <div class="form-group">  
            {{ Form::label('descripcion', 'Descripción') }}
            {{ Form::textarea('Descripcion', null, [
                    'class'      => 'form-control',
                    'rows'       => 3, 
                    'name'       => 'Descripcion',
                    'id'         => 'Descripcion',
                ])}}
        </div>
    </div>    
</div>
    <br>
<div class="d-flex justify-content-end">
    <div class="form-group pr-2" >
        <a href="{{route('tipo_activos.index')}}" 
            class="btn btn-outline-info btn_activo_save">
                Cancelar
        </a> 
    </div>
    <div class="form-group" >
        {{ Form::submit('Guardar', ['class' => 'btn btn-outline-success btn_activo_save']) }}
    </div>
</div>

    
    
