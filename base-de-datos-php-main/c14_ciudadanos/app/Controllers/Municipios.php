<?php
namespace App\Controllers;
use App\Models\MunicipiosModel;

class Municipios extends BaseController
{
    public function index(): string
    {
     
        $municipios= new MunicipiosModel();
        $datos['datos']=$municipios->findAll();
        return view('municipios',$datos);
    }
}