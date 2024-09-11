<?php
namespace App\Controllers;
use App\Models\CiudadanosModel;

class Ciudadanos extends BaseController
{
    public function index(): string
    {
     
        $ciudadanos= new CiudadanosModel();
        $datos['datos']=$ciudadanos->findAll();
        return view('ciudadanos',$datos);
    }
}