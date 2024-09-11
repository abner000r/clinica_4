<?php
namespace App\Controllers;
use App\Models\NivelesacademicosModel;

class Nivelesacademicos extends BaseController
{
    public function index(): string
    {
     
        $niveles= new NivelesacademicosModel();
        $datos['datos']=$niveles->findAll();
        return view('niveles',$datos);
    }
}