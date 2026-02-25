<?php

use Illuminate\Support\Facades\Route;

use App\Http\Controllers\ComidaEquipo3Controller;
use App\Http\Controllers\TipoComidaEquipo3Controller;


// Ruta principal
Route::get('/', function () {

    return redirect()->route('comida_equipo3.index');
});


// CRUD comidas equipo3

Route::resource(

    'comida_equipo3',

    ComidaEquipo3Controller::class

);


// CRUD tipo comidas equipo3

Route::resource(

    'tipo_comida_equipo3',

    TipoComidaEquipo3Controller::class

);
