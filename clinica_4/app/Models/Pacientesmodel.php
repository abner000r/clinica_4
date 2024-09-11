<?php

namespace App\Models;

use CodeIgniter\Model;

class PacientesModel extends Model
{
    protected $table = 'pacientes';
    protected $primaryKey = 'id_paciente';
    protected $allowedFields = [
       'nombre', 'apellido', 'email','telefono',
         'direccion', 'fecha_nacimiento','peso', 'altura', 'grupo_sanguineo', 'id_genero', 'contrasena', 'fecha_registro', 'imagen_url', 'activo'
    ];
    //protected $returnType    = \App\Entities\User::class;
    //protected $useTimestamps = true;
}