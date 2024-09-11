<?php

namespace App\Controllers;
use App\Models\PacientesModel;

class PacienteController extends BaseController
{
    public function index(): string
    {
        $pacientes = new PacientesModel();
        $datos['datos']=$pacientes->findAll();

        return view('vista_paciente',$datos);
    }
}