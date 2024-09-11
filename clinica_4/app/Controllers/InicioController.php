<?php

namespace App\Controllers;
use App\Models\PacientesModel;

class InicioController extends BaseController
{
    public function index(): string
    {
        $pacientes = new InicioModel();
        return view('inicio',$datos);
    }
}