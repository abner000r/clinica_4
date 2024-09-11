<?php
namespace App\Controllers;
use App\Models\DepartamentosModel;

class Departamentos extends BaseController
{
    public function index(): string
    {
     
        $departamentos= new DepartamentosModel();
        $datos['datos']=$departamentos->findAll();
        return view('departamentos',$datos);
    }
}