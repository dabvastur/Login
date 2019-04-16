<?php include'header.php'; ?>
    <body>
        <br>
        <center>
            <form style="width: 50%;" method="post" action="accUsuario.php">
                <div class="form-group">
                <label for="exampleInputEmail1">Usuario</label>
                <input type="text" name="usuario" class="form-control" placeholder="Enter email">
              </div>
              <div class="form-group">
                <label for="exampleInputPassword1">Contraseña</label>
                <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Contraseña">
                <small id="emailHelp" class="form-text text-muted">No des esta informacion a nadie!</small>
              </div>
              <div class="form-check">
                <input type="checkbox" class="form-check-input" id="exampleCheck1">
                <label class="form-check-label" for="exampleCheck1">Recuerdame!</label>
              </div>
              <button type="submit" class="btn btn-success">Ingresar</button>
            </form>
        </center>
    </body>
</html>
