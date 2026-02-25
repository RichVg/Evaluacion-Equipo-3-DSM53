<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;
use Illuminate\Database\Eloquent\Factories\HasFactory;

class TipoComidaEquipo3 extends Model
{

    use HasFactory;
    // DEFINIMOS LA TABLA A LA QUE SE VA A CONECTAR EL MODELO EQUIPO 3
    protected $table = 'tb_tipo_comidas_equipo3';



    protected $primaryKey = 'id_tipo_comida_equipo3';


    // DEFINIMOS LOS CAMPOS QUE SE PUEDEN LLENAR
    protected $fillable = [

        'nombre_categoria_equipo3'

    ];

    // RELACION 1 A MUCHOS
    public function comidas_equipo3()
    {

        return $this->hasMany(
            ComidaEquipo3::class,
            'id_tipo_comida_equipo3',
            'id_tipo_comida_equipo3'
        );
    }
}
