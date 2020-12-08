<h1 style="text-align: center;">Cuenta<span class="badge success">Nueva</span></h1>
<selection>
    <div class="card row" style="width: 40rem;">
    <form method="POST" action="index.php?page=newclient">
        <input type="hidden" name="xsstoken" value="{{xsstoken}}"/>
        <div>
        <label for="NOMBRE_PERSONA">Nombre del Cliente: </label>
        <input type="text" name="NOMBRE_PERSONA" id="NOMBRE_PERSONA" value="{{NOMBRE_PERSONA}}" placeholder="Nombre Cliente"/>
        </div>
        <div>
        <label for="APELLIDO_PERSONA">Apellido del Cliente: </label>
        <input type="text" name="APELLIDO_PERSONA" id="APELLIDO_PERSONA" value="{{APELLIDO_PERSONA}}" placeholder="Apellido Cliente"/>
        </div>
        <div>
        <label for="NUMERO_IDENTIDAD_PERSONA">Numero de Identidad: </label>
        <input type="text" name="NUMERO_IDENTIDAD_PERSONA" id="NUMERO_IDENTIDAD_PERSONA" value="{{NUMERO_IDENTIDAD_PERSONA}}" placeholder="Identidad o pasaporte"/>
        </div>
        <div>
        <label for="FECHA_NACIMIENTO_PERSONA">Fecha de Nacimiento: </label>
        <input type="date" name="FECHA_NACIMIENTO_PERSONA" id="FECHA_NACIMIENTO_PERSONA" value="{{FECHA_NACIMIENTO_PERSONA}}"/>
        </div>
        <div>
        <label for="DIRECCION_RESIDENCIA_PERSONA">Direccion: </label>
        <input type="text" name="DIRECCION_RESIDENCIA_PERSONA" id="DIRECCION_RESIDENCIA_PERSONA" value="{{DIRECCION_RESIDENCIA_PERSONA}}" placeholder="Direccion"/>
        </div>
        <div>
        <label for="clientgender">Genero: </label>
        <select name="clientgender" id="clientgender">
            <option value="FEM" {{clientgender_FEM}}>Femenino</option>
            <option value="MAS" {{clientgender_MAS}}>Masculino</option>
        </select>
        </div>
        <div>
        <label for="clientphone1">Telefono 1: </label>
        <input type="text" name="clientphone1" id="clientphone1" value="{{clientphone1}}" placeholder="Telefono 1"/>
        </div>
        <div>
        <label for="clientphone2">Telefono 2: </label>
        <input type="text" name="clientphone2" id="clientphone2" value="{{clientphone2}}" placeholder="Telefono 2"/>
        </div>
        <div>
        <label for="EMAIL_PERSONA">Correo: </label>
        <input type="text" name="EMAIL_PERSONA" id="EMAIL_PERSONA" value="{{EMAIL_PERSONA}}" placeholder="Correo Electronico"/>
        </div>
        <div>
    <div class="row">
    <button class="btn-success" id="btnsubmit" name="btnsubmit" type="submit">Enviar</button>
    <button class="btn-danger" id="btncancelar">Cancelar</button>
    </div>
    </form>
</div>
</selection>
<script>
    $().ready(function(){
        $("#btncancelar").click(function(e){
            e.preventDefault();
            e.stopPropagation();
            location.assign("index.php?page=home");
        });
    });
</script>
