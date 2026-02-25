<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class TipoComidaEquipo3Factory extends Factory
{

    public function definition(): array
    {

        return [

            'nombre_categoria_equipo3' => $this->faker->randomElement([
                'Bebidas',
                'Postres',
                'Platillos Fuertes',
                'Entradas',
                'Sopas'
            ])

        ];
    }
}
