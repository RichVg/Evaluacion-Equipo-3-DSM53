<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{

    public function up(): void
    {
        Schema::create('tb_comidas_equipo3', function (Blueprint $table) {

            $table->id('id_comida_equipo3');

            $table->string('nombre_comida_equipo3', 100);

            $table->decimal('costo_comida_equipo3', 8, 2);

            $table->text('detalle_comida_equipo3');

            // creamos la llave foranea para relacionar con la tabla de tipos de comida
            $table->unsignedBigInteger('id_tipo_comida_equipo3');

            // definimos la relacion de la llave foranea con la tabla de tipos de comida
            $table->foreign('id_tipo_comida_equipo3')
                ->references('id_tipo_comida_equipo3')
                ->on('tb_tipo_comidas_equipo3');

            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('tb_comidas_equipo3');
    }
};
