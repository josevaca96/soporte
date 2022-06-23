<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Activo;
use Illuminate\Support\Facades\Validator;
use App\Http\Requests\ActivoRequest;
class ActivosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {      
        $activos = Activo::orderBy('id' ,'DESC')->paginate(50);
        // $ = Activo::orderBy('id' ,'DESC')->paginate(50);
        return view('activos.index' , compact('activos'));
    }
    public function report_act()
    {      
        $activos = Activo::orderBy('id' ,'DESC')->get();
        return view('activos.reporte' , compact('activos'));
    }
    public function report_filter()
    {      
        $activos = Activo::orderBy('id' ,'DESC')->paginate(50);
        return view('activos.reporteall' , compact('activos'));
    }
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        $objActivo= new Activo;
        $codigo=$objActivo->obtener_codigo();
        return view('activos.create',compact('codigo'));
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(ActivoRequest $request)
    {
        $activo = Activo::create($request->all());
            return redirect()->route('activos.index')
            ->with('info',' Activo Guardado con éxito');      
    }

    /**
     * Display the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function show(Activo $activo)
    {
        
        return view('activos.show', compact('activo'));
    }

    /**
     * Show the form for editing the specified resource.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function edit(Activo $activo)
    {
        return view('activos.edit', compact('activo'));
    }
    
    
    /**
     * Update the specified resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function update(Request $request,Activo $activo)
    {
          $activo->update($request->all());
         return redirect()->route('activos.index')
             ->with('info','Actualizado con éxito');
    }

    /**
     * Remove the specified resource from storage.
     *
     * @param  int  $id
     * @return \Illuminate\Http\Response
     */
    public function destroy($id)
    {
        
        $activo =Activo::find($id);
        $activo->delete();
        return back()->with('info', 'eliminado correctamente');
    }
}
