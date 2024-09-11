<!doctype html>
<html lang="en">
  <head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">


    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">

    <title>Hello, world!</title>
  </head>
  <body>
    <div class="container">
        <h1>Ciudadanos</h1>
        <table class="table table-border table-striped">
            <thead>
                <tr>
                    <th>DPI</th>
                    <th>Apellido</th>
                    <th>Nombre</th>
                    <th>Direccion</th>
                    <th>Telefono Casa</th>
                    <th>Telefono Mvil</th>
                    <th>Email</th>
                    <th>Fecha de nacimiento</th>
                    <th>Codigo Nivel Academico</th>
                    <th>Codigo Municipios</th>
                    <th>Contraseña</th>
                </tr>
            </thead>
            <tbody>
            <?php
                foreach($datos as $municipios):

            ?>
                <tr>
                    <td><?php echo $municipios[ 'dpi'];?></td>
                    <td><?php echo $municipios[ 'apellido'];?></td>
                    <td><?php echo $municipios[ 'nombre'];?></td>
                    <td><?php echo $municipios[ 'direccion'];?></td>
                    <td><?php echo $municipios[ 'tel_casa'];?></td>
                    <td><?php echo $municipios[ 'tel_movil'];?></td> 
                    <td><?php echo $municipios[ 'email'];?></td>
                    <td><?php echo $municipios[ 'fechanac'];?></td> 
                    <td><?php echo $municipios[ 'cod_nivel_acad'];?></td>
                    <td><?php echo $municipios[ 'cod_muni'];?></td>
                    <td><?php echo $municipios[ 'contra'];?></td>
               
                </tr>
                <?php
                endforeach;
                
                ?>
            </tbody>
        </table>
    </div>



    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>

  
  </body>
</html>