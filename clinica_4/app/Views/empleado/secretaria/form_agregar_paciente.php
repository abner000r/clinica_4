<!DOCTYPE html>
<html lang="es">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Datos Del Paciente</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>

    /* Reset básico */
    body,
    h1,
    h2,
    p,
    ul,
    li {
        margin: 0;
        padding: 0;
        list-style: none;
        box-sizing: border-box;
        font-family: Arial, sans-serif;
    }

    body {
        background-color: #f4f4f4;
        color: #333;
    }

    header {
        display: flex;
        justify-content: space-between;
        align-items: center;
        padding: 20px;
        background-color: white;
        border-bottom: 1px solid #ddd;
    }

    .logo {
        display: flex;
        align-items: center;
    }

    .logo img {
        width: 50px;
        height: 50px;
        margin-right: 10px;
    }

    .social-icons i {
        margin-left: 15px;
        font-size: 18px;
        cursor: pointer;
    }

    nav {
        display: flex;
        justify-content: center;
        padding: 20px 0;
        background-color: white;
        border-bottom: 1px solid #ddd;
    }

    nav ul {
        display: flex;
    }

    nav li {
        margin: 0 15px;
    }

    nav a {
        text-decoration: none;
        color: #333;
        font-weight: bold;
    }

    .bienvenida {
        text-align: center;
        padding: 40px 0;
        background-color: #e0f7fa;
    }

    .bienvenida h2 {
        color: #00796b;
    }

    .servicios-pacientes {
        display: flex;
        flex-wrap: wrap;
        justify-content: center;
        gap: 20px;
        padding: 40px 0;
    }

    .servicio {
        flex: 1 1 calc(25% - 20px);
        max-width: calc(25% - 20px);
        display: flex;
        flex-direction: column;
        align-items: center;
        text-align: center;
        margin-bottom: 20px;
        background-color: #fff;
        border-radius: 10px;
        box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        padding: 20px;
    }

    .servicio img {
        width: 100px;
        height: 100px;
        border-radius: 50%;
        object-fit: cover;
        margin-bottom: 10px;
    }

    @media screen and (max-width: 1200px) {
        .servicio {
            flex: 1 1 calc(33.33% - 20px);
            max-width: calc(33.33% - 20px);
        }
    }

    @media screen and (max-width: 768px) {
        .servicio {
            flex: 1 1 calc(50% - 20px);
            max-width: calc(50% - 20px);
        }
    }

    @media screen and (max-width: 576px) {
        .servicio {
            flex: 1 1 100%;
            max-width: 100%;
        }   
    }

    footer {
        background-color: #00796b;
        color: #fff;
        padding: 20px;
        text-align: center;
    }

    footer a {
        color: #fff;
        text-decoration: none;
        margin: 0 10px;
    }

    footer a:hover {
        text-decoration: underline;
    }   
    /* Estilos adicionales para el formulario */
        .form-container {
            max-width: 600px;
            margin: 40px auto;
            padding: 20px;
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .form-container h2 {
            text-align: center;
            margin-bottom: 20px;
            color: #00796b;
        }

        .form-container .form-group {
            margin-bottom: 15px;
        }

        .form-container label {
            font-weight: bold;
            color: #333;
        }

        .form-container input,
        .form-container select {
            width: 100%;
            padding: 10px;
            border: 1px solid #ddd;
            border-radius: 5px;
        }

        .form-container button {
            width: 100%;
            padding: 10px;
            background-color: #00796b;
            color: #fff;
            border: none;
            border-radius: 5px;
            cursor: pointer;
        }

        .form-container button:hover {
            background-color: #005f56;
        }
    </style>
</head>

<body>
    <!-- Encabezado -->
    <header>
        <div class="logo">
            <img src="https://marketplace.canva.com/EAFdCebXgRs/1/0/1600w/canva-logotipo-medicina-simple-azul-y-blanco-4UzHG4FY3uw.jpg" alt="Logo Clínica Médica">
            <div>
                <h1>Ficha del Paciente  </h1>
                <p>Clinica Medica</p>
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

    <!-- principal -->
    <nav class="navbar navbar-expand-lg navbar-light bg-light">
        <div class="container-fluid">
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav"
                aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav mx-auto mb-2 mb-lg-0">
                    <li class="nav-item">
                        <a class="nav-link" href="<?= base_url('portal_paciente')?>">Portal del Paciente</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Citas Médicas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Mis Resultados</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Historia Clínica</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Recetas</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Perfil</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <!-- Formulario -->
    <div class="form-container">
        <h2>Registro de Paciente</h2>
        <form action="ruta_del_servidor_para_guardar_los_datos" method="POST">
            <div class="form-group">
                <label for="id_paciente">ID Paciente</label>
                <input type="text" id="id_paciente" name="id_paciente" required>
            </div>
            <div class="form-group">
                <label for="nombre">Nombre</label>
                <input type="text" id="nombre" name="nombre" required>
            </div>
            <div class="form-group">
                <label for="apellido">Apellido</label>
                <input type="text" id="apellido" name="apellido" required>
            </div>
            <div class="form-group">
                <label for="email">Email</label>
                <input type="email" id="email" name="email" required>
            </div>
            <div class="form-group">
                <label for="telefono">Teléfono</label>
                <input type="tel" id="telefono" name="telefono" required>
            </div>
            <div class="form-group">
                <label for="direccion">Dirección</label>
                <input type="text" id="direccion" name="direccion" required>
            </div>
            <div class="form-group">
                <label for="fecha_nacimiento">Fecha de Nacimiento</label>
                <input type="date" id="fecha_nacimiento" name="fecha_nacimiento" required>
            </div>
            <div class="form-group">
                <label for="peso">Peso (kg)</label>
                <input type="number" id="peso" name="peso" step="0.1" required>
            </div>
            <div class="form-group">
                <label for="altura">Altura (cm)</label>
                <input type="number" id="altura" name="altura" step="0.1" required>
            </div>
            <div class="form-group">
                <label for="grupo_sanguineo">Grupo Sanguíneo</label>
                <select id="grupo_sanguineo" name="grupo_sanguineo" required>
                    <option value="">Seleccionar...</option>
                    <option value="A+">A+</option>
                    <option value="A-">A-</option>
                    <option value="B+">B+</option>
                    <option value="B-">B-</option>
                    <option value="AB+">AB+</option>
                    <option value="AB-">AB-</option>
                    <option value="O+">O+</option>
                    <option value="O-">O-</option>
                </select>
            </div>
            <div class="form-group">
                <label for="id_genero">Género</label>
                <select id="id_genero" name="id_genero" required>
                    <option value="">Seleccionar...</option>
                    <option value="1">Masculino</option>
                    <option value="2">Femenino</option>
                    <option value="3">Otro</option>
                </select>
            </div>
            <div class="form-group">
                <label for="contrasena">Contraseña</label>
                <input type="password" id="contrasena" name="contrasena" required>
            </div>
            <div class="form-group">
                <label for="fecha_registro">Fecha de Registro</label>
                <input type="date" id="fecha_registro" name="fecha_registro" required>
            </div>
            <div class="form-group">
                <label for="imagen_url">URL de la Imagen</label>
                <input type="url" id="imagen_url" name="imagen_url">
            </div>
            <div class="form-group">
                <label for="activo">Activo</label>
                <select id="activo" name="activo" required>
                    <option value="1">Sí</option>
                    <option value="0">No</option>
                </select>
            </div>
            <button type="submit">Registrar Paciente</button>
        </form>
    </div>

    <!-- Pie de página -->
    <footer>
        <p>© 2024 Clinica Medica | <a href="#">Política de Privacidad</a> | <a href="#">Términos de Servicio</a></p>
    </footer>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>
</body>

</html>
