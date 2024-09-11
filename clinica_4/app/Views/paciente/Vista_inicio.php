<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Clínica Médica</title>
</head>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
<link href="<?= base_url('diseno_css/paciente/inicio.css') ?>" rel="stylesheet">



</head>

<body>

    <!-- Encabezado -->
    <header>
        <div class="logo">
            <a href=""> <img
                    src="https://marketplace.canva.com/EAFdCebXgRs/1/0/1600w/canva-logotipo-medicina-simple-azul-y-blanco-4UzHG4FY3uw.jpg"
                    alt="Logo Clínica Médica">
            </a>
            <div>
                <h1>Clínica Medica</h1>
                <p>Servicios Medicos</p>
            </div>
        </div>

        <div class="social-icons">
            <i class="fas fa-home"></i>
            <i class="fab fa-instagram"></i>
            <i class="fab fa-facebook-f"></i>
            <i class="fab fa-linkedin-in"></i>
            <i class="fab fa-twitter"></i>
        </div>
    </header>
    <!-- Navegación principal -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <!-- Menú principal -->
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="#">Horarios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Sobre Nosotros</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Médicos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Ubicación</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Contáctanos</a>
                    </li>
                    <li class="nav-item dropdown">
                        <!-- Botón del menú desplegable -->
                        <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button"
                            data-bs-toggle="dropdown" aria-expanded="false">
                            Tipo de Usuario
                        </a>
                        <!-- Elementos del menú desplegable -->
                        <ul class="dropdown-menu dropdown-menu-end" aria-labelledby="navbarDropdown">
                            <li><a class="dropdown-item" href="#">Empleado</a></li>
                            <li><a class="dropdown-item" href="#">Paciente</a></li>
                        </ul>
                    </li>
                </ul>
            </div>
        </div>
    </nav>




    <!-- Imagenes de carrusel-->
    <div class="container my-4">
        <!-- Contenedor centrado -->
        <div id="carouselExampleFade" class="carousel slide carousel-fade">
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="https://www.unitecoprofesional.es/blog/wp-content/uploads/2021/05/sesiones-clinicas.jpg"
                        class="d-block w-100 img-fluid fixed-image" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://www.clinica25demayo.com.ar/wp-content/uploads/especialidades-12-clinica-medica.jpg"
                        class="d-block w-100 img-fluid fixed-image" alt="...">
                </div>
                <div class="carousel-item">
                    <img src="https://mibluemedical.com/wp-content/uploads/elementor/thumbs/Captura-de-Pantalla-2022-09-23-a-las-15.34.38-pv7dcchde73d8jwcmge8bkzbdvo5h0eouabpuz28ym.png"
                        class="d-block w-100 img-fluid fixed-image" alt="...">
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleFade"
                data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleFade"
                data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
    </div>

    <!-- Epecialidades -->
    <div class="servicios">
        <div class="servicio">
            <a href="<?= base_url('nutri'); ?>"><img
                    src="https://www.ceupe.com/images/easyblog_articles/4305/b2ap3_large_profesion-de-nutricionista-clinico.jpg"
                    alt="">
            </a>
            <p>Nutricionistas</p>
        </div>
        <div class="servicio"> <a href="cardiologia"><img
                    src="https://i0.wp.com/angios.com/wp-content/uploads/2023/04/2.jpg?fit=1000%2C1000&ssl=1"
                    alt=""></a>
            <p>Cardiología</p>
        </div>
        <div class="servicio"> <a href="dermatologia"><img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQw__KrmhQndjLwdZi-irYzru3_q0CbOx8YgA&s"
                    alt=""></a>
            <p>Dermatología</p>
        </div>
        <div class="servicio"> <a href="traumatologia"><img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQZuYldrUuUU0A7OoNRzGYAC05HK2799mPmdg&s"
                    alt=""></a>
            <p>Traumatología</p>
        </div>
        <div class="servicio"> <a href="servicio_electronicos"><img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRYz1wolq40AC4_Hgp9PHs7hCDj5Vywp5BwZQ&s"
                    alt=""></a>
            <p>Servicios Electrónicos</p>
        </div>
        <div class="servicio"> <a href="inmunologia"><img
                    src="https://www.ui1.es/sites/default/files/blog/images/sistema_inmunologico.jpg" alt=""></a>
            <p>Inmunología</p>
        </div>
        <div class="servicio"> <a href="hematologia"><img
                    src="https://www.vitalseguro.com/wp-content/uploads/2021/09/hematologi%CC%81a.png" alt=""></a>
            <p>Hematología</p>
        </div>
        <div class="servicio"> <a href="radiologia"><img
                    src="https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTDYc-7V_v3UXb8SI9XO2y4rA_gsRmfDlZGRw&s"
                    alt=""></a>
            <p>Radiología</p>
        </div>
    </div>





    <footer class="footer">
        <div class="container">
            <div class="row">
                <!-- Institucional -->
                <div class="col-md-4">
                    <h5>INSTITUCIONAL</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Nosotros</a></li>
                        <li><a href="#">Horarios de atención</a></li>
                        <li><a href="#">Coberturas que atendemos</a></li>
                        <li><a href="#">Credencial de servicios SAAV</a></li>
                        <li><a href="#">Reservar turnos</a></li>
                        <li><a href="#">Cómo llegar</a></li>
                    </ul>
                </div>

                <!-- Contáctenos -->
                <div class="col-md-4">
                    <h5>CONTÁCTENOS</h5>
                    <ul class="list-unstyled">
                        <li><a href="#">Consultas y sugerencias</a></li>
                        <li><a href="#">Trabaje con nostros</a></li>
                        <li><a href="#">Profesionales de la salud</a></li>
                        <li><a href="#">Agente propaganda pagada</a></li>
                        <li><a href="#">Formulario de solicitud</a></li>
                    </ul>
                </div>

                <!-- Información de Interés -->
                <div class="col-md-4">
                    <h5>INFORMACIÓN DE INTERÉS</h5>
                    <ul class="list-unstyled">
                        <li>Plasma rico en plaquetas</li>
                        <li><a href="#"> Vacunación antigripal
                                2024</a></li>
                        <li><a href="#"> Prevención del dengue</a></li>
                        <li><a href="#"> Acumputura</a></li>
                    </ul>
                </div>
            </div>

            <!-- Copyright -->
            <div class="row mt-4">
                <div class="col text-center">
                    <p>Todos los derechos reservados ® | República de Guatemala| Clinica Medica</p>
                </div>
            </div>
        </div>
    </footer>


    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>


</body>

</html>