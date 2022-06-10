<div class="form-group">
    @include('activos.error')
    {{ Form::label('name', 'Codigo') }}
    {{ Form::text('Codigo',null, ['class' => 'form-control', 'disabled' => true]) }}
</div>
<div class="form-group">
    {{ Form::label('name', 'Nombre Activo') }}
    {!! Form::select('NombreActivo', [
                'laptop' => 'LAPTOP',
                'cargador' => 'CARGADOR',
                'teclado' => 'TECLADO',
                'mouse' => 'MOUSE',
                'pc-escritorio' => 'PC-ESCRITORIO',
                'impresora' => 'IMPRESORA',
                'monitor' => 'MONITOR',
                'tv-plasma' => 'TV-PLASMA',
                'proyector' => 'PROYECTOR',
                'parlantes' => 'PARLANTES',
                'scanner' => 'SCANNER',
                'telefono' => 'TELEFONO',
                'auriculares' => 'AURICULARES',
                'etiquetadora' => 'ETIQUETADORA',
                'usb' => 'USB',
                'camara-web' => 'CAMARA WEB',
                'adaptador' => 'ADAPTADOR',

                
                ],null,['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {{ Form::label('name', 'Marca') }}
    {{ Form::text('Marca', null , ['class' => 'form-control']) }}
</div>
<div class="form-group">
    {{ Form::label('name', 'Modelo') }}
    {{ Form::text('Modelo', null , ['class' => 'form-control']) }}
</div>
<div class="form-group">
    {{ Form::label('name', 'Nro. Serial') }}
    {{ Form::text('NroSerial', null , ['class' => 'form-control']) }}
</div>
<div class="form-group">
    {{ Form::label('name', 'Oficina') }}
    {{ Form::text('Oficina', null , ['class' => 'form-control']) }}
</div>
<div class="form-group">
    {{ Form::label('name', 'Condicion') }}
    {!! Form::select('Condicion', ['adecuado' => 'ADECUADO', 'req_man' => 'REQUIERE MANTENIMIENTO','dañado' => 'DAÑADO','baja' => 'BAJA'],null,['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {{ Form::label('name', 'Usuario Asignado') }}
    {{ Form::text('UsuarioAsig', null , ['class' => 'form-control']) }}
</div>
<div class="form-group">
    {{ Form::label('name', 'Observaciones') }}
    
   {{ Form::textarea('Observaciones', null, [
                    'class'      => 'form-control',
                    'rows'       => 4, 
                    'name'       => 'Observaciones',
                    'id'         => 'Observaciones',
                    'onkeypress' => "return nameFunction(event);"
                ])}}

</div>
<div class="form-group">
    {{ Form::label('name', 'Captura de Recursos') }}
    {!! Form::select('CapRecursos', ['si' => 'SI', 'no' => 'NO'],null,['class' => 'form-control']) !!}
</div>
<div class="form-group">
    {{ Form::label('name', 'Empresa') }}
    {!! Form::select('Empresa', [
            'celina' => 'CELINA',
            'pacucito' => 'PACUCITO',
            'galileo' => 'GALILEO',
            'ticketeg' => 'TICKETEG',
            'multipago' => 'MULTIPAGO'
            
        ],null,['class' => 'form-control']) !!}
</div>



<div class="form-group">
    {{ Form::submit('Guardar', ['class' => 'btn btn-sm btn-primary']) }}
    
</div>
<br>
                        <br>
                        <br>
                        <br>
                        <br>
                        <br>
                        