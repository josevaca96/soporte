<?php

namespace App\Http\Controllers;

use Illuminate\Http\Request;
use App\Activo;
use Illuminate\Support\Facades\Validator;
class ActivosController extends Controller
{
    /**
     * Display a listing of the resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function index()
    {
        $activos = Activo::orderBy('id' ,'ASC')->paginate(50);
        return view('activos.index' , compact('activos'));
    }
    public function buscar_activos(Request $req)
    {
        $activos = Activo::where("UsuarioAsig","like",$req->texto."%")->take(10)->get();
        return view('activos.reporte' , compact('activos'));
    }
    
    /**
     * Show the form for creating a new resource.
     *
     * @return \Illuminate\Http\Response
     */
    public function create()
    {
        return view('activos.create');
    }

    /**
     * Store a newly created resource in storage.
     *
     * @param  \Illuminate\Http\Request  $request
     * @return \Illuminate\Http\Response
     */
    public function store(Request $request)
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
