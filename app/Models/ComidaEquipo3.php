<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class ComidaEquipo3 extends Model
{

    // DEFINIMOS LA TABLA A LA QUE SE VA A CONECTAR AL MODELO EQUIPO 3
    use HasFactory;

    protected $table = 'tb_comidas_equipo3';

    protected $primaryKey = 'id_comida_equipo3';

    protected $fillable = [

        'nombre_comida_equipo3',

        'costo_comida_equipo3',

        'detalle_comida_equipo3',

        'id_tipo_comida_equipo3'

    ];

    // RELACION MUCHOS A 1
    public function tipo_comida_equipo3()
    {
        return $this->belongsTo(
            TipoComidaEquipo3::class,
            'id_tipo_comida_equipo3',
            'id_tipo_comida_equipo3'
        );
    }
}
