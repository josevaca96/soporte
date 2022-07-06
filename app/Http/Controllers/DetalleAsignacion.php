<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Asignacion;
use Illuminate\Http\Request;

class DetalleAsignacion extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $detalle_asginacions= DB::table('detalle_asignacions')
        ->join('empresas', 'empresas.id', '=', 'detalle_asignacions.IdE')
        ->join('oficinas', 'oficinas.id', '=', 'detalle_asignacions.IdO')
        ->join('departamentos', 'departamentos.id', '=', 'detalle_asignacions.IdD')
        ->join('activos', 'detalle_asignacions.IdAct', '=', 'activos.id')
        ->join('tipo_activos', 'activos.IdTAct', '=', 'tipo_activos.id')
        ->select('activos.Codigo',
                
                'detalle_asignacions.IdE',
                'detalle_asignacions.IdO',
                'detalle_asignacions.IdD',
                'detalle_asignacions.IdAct',
                'tipo_activos.Nombre as activo',
                'detalle_asignacions.UsuarioAsig',
                'empresas.Nombre as empresa',
                'oficinas.Direccion',
                'departamentos.Nombre as departamento',
                'detalle_asignacions.fecha_i',
                'detalle_asignacions.fecha_f',
                'detalle_asignacions.CapRecursos',
                'detalle_asignacions.deleted_at'
                )
        ->where('detalle_asignacions.deleted_at', '=', null)
        ->orderBy('IdE' ,'ASC')
        ->paginate(30);
        
        return view('DetalleAsignacion.index' , compact('detalle_asginacions'));
    }

    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('DetalleAsignacion.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
    {
        //validando los campos del formulario
        Validator::make($request->all(), [
            'IdE'   => 'required',
            'IdO'   => 'required',
            'IdD'   => 'required',
            'IdAct' => 'required',
            'fecha_i' => 'required',
            'CapRecursos' => 'required',
            ],
        [
            'IdE.required' => 'El Campo Empresa es requerido',
            'IdO.required' => 'El Campo Oficina es requerido',
            'IdD.required' => 'El Campo Departamento es requerido',
            'IdAct.required' => 'El Campo Activo es requerido',
            'fecha_i.required' => 'El Campo Fecha Inicial es requerido',
            'CapRecursos.required' => 'El Campo Captura de Recurso es requerido',
        ])->validate();
        $asigancion = Asignacion::create($request->all());
        return redirect()->route('asignaciones.index')
        ->with('info',' Creado con éxito');
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show($IdE,$IdO,$IdD,$IdAct)
    {
        
        $detalle= DB::table('detalle_asignacions')
                ->join('empresas', 'empresas.id', '=', 'detalle_asignacions.IdE')
                ->join('oficinas', 'oficinas.id', '=', 'detalle_asignacions.IdO')
                ->join('departamentos', 'departamentos.id', '=', 'detalle_asignacions.IdD')
                ->join('activos', 'detalle_asignacions.IdAct', '=', 'activos.id')
                ->join('tipo_activos', 'activos.IdTAct', '=', 'tipo_activos.id')
                ->select('activos.Codigo',
                'detalle_asignacions.IdE',
                'detalle_asignacions.IdO',
                'detalle_asignacions.IdD',
                'detalle_asignacions.IdAct',
                'tipo_activos.Nombre as activo',
                'detalle_asignacions.UsuarioAsig',
                'empresas.Nombre as empresa',
                'oficinas.Direccion',
                'departamentos.Nombre as departamento',
                'detalle_asignacions.fecha_i',
                'detalle_asignacions.fecha_f',
                'detalle_asignacions.CapRecursos'
                )
                ->where('IdE', '=', $IdE)        
                ->where('IdO','=', $IdO)
                ->where('IdD','=', $IdD)
                ->where('IdAct','=',$IdAct)
                ->get();
                // dd($detalle);
        return view('DetalleAsignacion.show', compact('detalle'));    
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Asignacion $asignacion)
    {
        return view('DetalleAsignacion.edit', compact('asignacion'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, $id)
    {
        //
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($IdE,$IdO,$IdD,$IdAct)
    {
        $asignacion =DB::table('detalle_asignacions')
            ->where('IdE' ,'=' ,$IdE)
            ->where('IdO' ,'=' ,$IdO)
            ->where('IdD' ,'=' ,$IdD)
            ->where('IdAct' ,'=' ,$IdAct)
            ->delete();
        return back()->with('info', 'eliminado correctamente');
    }
}
