<?php

namespace Database\Factories;

use Illuminate\Database\Eloquent\Factories\Factory;

class ComidaEquipo3Factory extends Factory
{
    public function definition(): array
    {
        return [

            'nombre_comida_equipo3' => fake()->randomElement([
                'Tacos',
                'Quesadillas',
                'Enchiladas',
                'Pozole',
                'Sopes',
                'Flautas',
                'Tamales',
                'Tostadas',
                'Mole',
                'Caldo de pollo',
                'Hamburguesa',
                'Hot Dog',
                'Chilaquiles',
                'Flan',
                'Gelatina'
            ]),

            'costo_comida_equipo3' => fake()->numberBetween(10, 120),

            'detalle_comida_equipo3' => $this->faker->sentence(),

            'id_tipo_comida_equipo3' => fake()->numberBetween(1, 5),

        ];
    }
}
