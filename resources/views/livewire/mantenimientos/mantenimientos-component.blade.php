<div>
    <div class="row">
        <div id="heading">
            <div>
                <h4 class="mb-0">Nuevo Mantenimiento</h4>
                <p class="text-muted pl-1 mb-0">Estimación de 6 meses</p>
            </div>
            <div>
                <img src="{{ asset('img/logo_man_mod.png') }}" class="logo_guide" alt="">
            </div>
        </div>
    </div>
    <main class="pt-3">
        <div class="row itm">
            <div class="col-3">
                <label for="" class="mb-0">Código</label>
                {{ Form::text('Codigo', null, ['class' => 'form-control']) }}
            </div>
            <div class="col-4">
                <label for="" class="mb-0">Activo</label>
                {{ Form::text('Codigo', null, ['class' => 'form-control']) }}
            </div>
            <div class="col-4">
                <label for="" class="mb-0">Serial</label>
                {{ Form::text('Codigo', null, ['class' => 'form-control']) }}
            </div>
            <div class="col-4">
                <label for="" class="mb-0">Fecha de Mantenimiento</label>
                {{ Form::date('fecha_i', null, ['class' => 'form-control']) }}
            </div>
            <div class="col-4">
                <label for="" class="mb-0">Proximo Mantenimiento</label>
                {{ Form::date('fecha_i', null, ['class' => 'form-control']) }}
            </div>
            <div class="col-2 pt-4">
                <label class="m-0" for="">Mant. Aprobado:</label>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox1" value="option1">
                    <label class="form-check-label" for="inlineCheckbox1">Si</label>
                </div>
                <div class="form-check form-check-inline">
                    <input class="form-check-input" type="checkbox" id="inlineCheckbox2" value="option2">
                    <label class="form-check-label" for="inlineCheckbox2">No</label>
                </div>
            </div>
            <div class="col-12">
                <label for="" class="mb-0">Descripción</label>
                {{ Form::textarea('Descripcion', null, [
                    'class' => 'form-control',
                    'rows' => 2,
                    'name' => 'Descripcion',
                    'id' => 'Descripcion',
                ]) }}
            </div>
            {{-- table --}}
            <div class="row ">
                <div class="col-6">
                    <label> Buscar</label>
                    <input wire:model="search" type="text" placeholder="Buscar por: activo,marca,modelo"
                        class="form-control">
                </div>
            </div>
            <div class="table-responsive-lg">
                <table id="" class="table table-striped table-hover ">
                    <thead>
                        <tr>
                            <th>Codigo</th>
                            <th>Nombre de Activo</th>
                            <th>Marca</th>
                            <th>Modelo</th>
                            <th>Nroserial</th>
                            <th colspan="3" width="8%">Acciones</th>
                        </tr>
                    </thead>

                </table>
            </div>
        </div>
    </main>
</div>
