<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;
use Illuminate\Support\Facades\DB;

return new class extends Migration
{

    public function up(): void
    {

        Schema::create('tb_tipo_comidas_equipo3', function (Blueprint $table) {

            $table->id('id_tipo_comida_equipo3');

            $table->string('nombre_categoria_equipo3', 50);

            $table->timestamps();
        });


        // INSERTAMOS LAS CATEGORIAS
        DB::table('tb_tipo_comidas_equipo3')->insert([

            ['nombre_categoria_equipo3' => 'Bebidas'],

            ['nombre_categoria_equipo3' => 'Postres'],

            ['nombre_categoria_equipo3' => 'Platillos Fuertes'],

            ['nombre_categoria_equipo3' => 'Entradas'],

            ['nombre_categoria_equipo3' => 'Sopas'],

        ]);
    }


    public function down(): void
    {

        Schema::dropIfExists('tb_tipo_comidas_equipo3');
    }
};
