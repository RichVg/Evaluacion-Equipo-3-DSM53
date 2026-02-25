<?php

namespace App\Http\Controllers;

use App\Models\ComidaEquipo3;
use App\Models\TipoComidaEquipo3;
use Illuminate\Http\Request;

class ComidaEquipo3Controller extends Controller
{

    // CRUD CREAR, GUARDAR, MOSTRAR, EDITAR, ACTUALIZAR Y ELIMINAR LAS COMIDAS
    public function index()
    {
        $comidas = ComidaEquipo3::with('tipo_comida_equipo3')->get();

        return view('comida_equipo3.inicio', compact('comidas'));
    }


    // CREAR LAS COMIDAS
    public function create()
    {

        $tipos = TipoComidaEquipo3::all();

        return view('comida_equipo3.nuevo', compact('tipos'));
    }

    // GUARDAR LAS COMIDAS
    public function store(Request $request)
    {

        ComidaEquipo3::create([

            'nombre_comida_equipo3' => $request->nombre_comida_equipo3,

            'costo_comida_equipo3' => $request->costo_comida_equipo3,

            'detalle_comida_equipo3' => $request->detalle_comida_equipo3,

            'id_tipo_comida_equipo3' => $request->id_tipo_comida_equipo3

        ]);

        return redirect()->route('comida_equipo3.index');
    }

    // MOSTRAR LAS COMIDAS
    public function show($id)
    {

        $comida = ComidaEquipo3::findOrFail($id);

        return view('comida_equipo3.show', compact('comida'));
    }

    // EDITAR LAS COMIDAS
    public function edit($id)
    {

        $comida = ComidaEquipo3::findOrFail($id);

        $tipos = TipoComidaEquipo3::all();

        return view('comida_equipo3.editar', compact('comida', 'tipos'));
    }

    // ACTUALIZAR LAS COMIDAS
    public function update(Request $request, $id)
    {

        $comida = ComidaEquipo3::findOrFail($id);

        $comida->update([

            'nombre_comida_equipo3' => $request->nombre_comida_equipo3,

            'costo_comida_equipo3' => $request->costo_comida_equipo3,

            'detalle_comida_equipo3' => $request->detalle_comida_equipo3,

            'id_tipo_comida_equipo3' => $request->id_tipo_comida_equipo3

        ]);

        return redirect()->route('comida_equipo3.index');
    }

    // ELIMINAR LAS COMIDAS
    public function destroy($id)
    {

        ComidaEquipo3::destroy($id);

        return redirect()->route('comida_equipo3.index');
    }
}
