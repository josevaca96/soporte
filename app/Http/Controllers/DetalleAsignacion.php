<?php

namespace App\Http\Controllers;
use Illuminate\Support\Facades\DB;
use Illuminate\Support\Facades\Validator;
use App\Asignacion;
use App\Oficina;
use Illuminate\Http\Request;
use Carbon\Carbon;
use Illuminate\Validation\Rule;


class DetalleAsignacion extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index(){
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
    public function create(){
        return view('DetalleAsignacion.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public $G_IdE,$G_IdO,$G_IdD,$G_IdAct;
    public function store(Request $request){
        // dd($request->IdE);
        $this->G_IdE =$request->IdE;
        $this->G_IdO =$request->IdO;
        $this->G_IdD =$request->IdD;
        $this->G_IdAct =$request->IdAct;
        //validando los campos del formulario
        Validator::make($request->all(), [
            'IdE'   => 'required',
            'IdO'   => 'required',
            'IdD'   => 'required',
            'IdAct' => 'required',
            'fecha_i' => 'required',
            'CapRecursos' => 'required',
            'IdE'   => Rule::unique('detalle_asignacions')->where(function ($query){
                return $query->where('IdE',$this->G_IdE)
                             ->where('IdO',$this->G_IdO)
                             ->where('IdD',$this->G_IdD)
                             ->where('IdAct',$this->G_IdAct);
            })    
        ],
        [
            'IdE.required' => 'El Campo Empresa es requerido',
            'IdE.unique' => 'Verifique los Datos',
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
    public function edit($IdE,$IdO,$IdD,$IdAct)
    {
        // dd($IdE,$IdO,$IdD,$IdAct);
        $detalle_asignacions =Asignacion::where('IdE','=',$IdE)
            ->where('IdO','=',$IdO)
            ->where('IdD','=',$IdD)
            ->where('IdAct','=',$IdAct)
            ->get();
            
            $transform=$detalle_asignacions[0];        
            
        return view('DetalleAsignacion.edit', compact('detalle_asignacions','transform'));
    }

    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request, Asignacion $obj_asig){ 
    // dd($request);
        //validando los campos del formulario
        Validator::make($request->all(), [
            'IdE' => 'required',
            'IdO' => 'required',
            'IdD' => 'required',
            'IdAct' => 'required',
            'fecha_i' => 'required'
            ],
            [
            'IdE.required' => 'El Campo Empresa es requerido',
            'IdO.required' => 'El Campo Oficina es requerido',
            'IdD.required' => 'El Campo Departamento es requerido',
            'IdAct.required' => 'El Campo Activo es requerido',
            'fecha_i.required' => 'El Campo Fecha inicial es requerido',
        ])->validate();
        $obj_asig = DB::table('detalle_asignacions')
            ->where('IdE', $request->ide2)
            ->where('IdO', $request->ido2)
            ->where('IdD', $request->idd2)
            ->where('IdAct', $request->idact2)

            ->update(['IdE' => $request->IdE,
                    'IdO' => $request->IdO,
                    'IdD' => $request->IdD,
                    'IdAct' => $request->IdAct,
                    'fecha_i' => $request->fecha_i,
                    'fecha_f' => $request->fecha_f,
                    'UsuarioAsig' => $request->UsuarioAsig,
                    'CapRecursos' => $request->CapRecursos]);
        
        return redirect()->route('asignaciones.index')
        ->with('info','Actualizado con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    
    public function destroy($IdE,$IdO,$IdD,$IdAct)
    {
        $fecha = $this->obtener_fecha_actual();
        $asignacion =DB::table('detalle_asignacions')
        ->where('IdE' ,'=' ,$IdE)
        ->where('IdO' ,'=' ,$IdO)
        ->where('IdD' ,'=' ,$IdD)
        ->where('IdAct' ,'=' ,$IdAct)
        ->update(['deleted_at' => $fecha]);
        return back()->with('info', 'eliminado correctamente');

        
    }
    public function obtener_fecha_actual(){
        $fecha_actual = new Carbon();
        date_default_timezone_set('America/La_Paz');
        $time = strtotime($fecha_actual);
        $fechaLocal = date("Y-m-d H:i:s", $time);
        return $fechaLocal;
    }
}
