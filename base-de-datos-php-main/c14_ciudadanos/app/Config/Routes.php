<?php

use CodeIgniter\Router\RouteCollection;

/**
 * @var RouteCollection $routes
 */
$routes->get('/', 'Home::index');
$routes->get('ver_regiones','Regiones::index');
$routes->get('ver_departamentos','Departamentos::index');
$routes->get('ver_municipios','Municipios::index');
$routes->get('ver_ciudadanos','Ciudadanos::index');
$routes->get('ver_niveles','Nivelesacademicos::index');

