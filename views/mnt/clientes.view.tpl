<section><h1>Mantenimiento de Clientes</h1></section>
<hr/>
<form action="index.php?page=clientes" method="post">
<section class="row">
    <h2>Filtrar por</h2>
    <div class="col-sm-12 col-md-10">
        <label class="col-sm-12 col-md-3" for="cln_txtfilter">Identidad | Nombre</label>
        <input class="col-sm-12 col-md-9" type="text" name="cln_txtfilter" id="cln_txtfilter" value="{{cln_txtfilter}}" placeholder="Identidad | Nombre"/>
    </div>
    <div class="col-sm-12 col-md-2">
        <button type="submit" name="btnFiltrar">Actualizar</button>
    </div>
</section>
</form>
<hr/>
<section class="row">
    <table class="col-sm-12">
        <thead class="zebra">
            <tr>
                <th>
                Codigo
                </th>
                <th>
                Nombre
                </th>
                <th>
                Telefono
                </th>
                <th>
                Correo
                </th>
                <th>
                Comunicaciones
                </th>
                <th>
                <a class="btn depth-1 s-margin" href="index.php?page=cliente&mode=INS&clientid=0"><span class="ion-plus-circled"></span></a><br/>
                </th>
            </tr>
        </thead>
        <tbody>
            {{foreach clientes}}
            <tr>
                <td>
                {{clientid}}
                </td>
                <td>
                {{clientname}}
                </td>
                <td>
                {{clientphone1}} {{clientphone2}}
                </td>
                <td>
                {{clientmail}}
                </td>
                <td class="center">
                <a class="btn depth-1 s-margin" href="index.php?page=comunicaciones&mode=CMN&clientid={{clientid}}">@</a>
                </td>
                <td class="center">
                <a class="btn depth-1 s-margin" href="index.php?page=cliente&mode=UPD&clientid={{clientid}}"><span class="ion-edit"></span></a>
                <a class="btn depth-1 s-margin" href="index.php?page=cliente&mode=DSP&clientid={{clientid}}"><span class="ion-eye"></span></a>
                <a class="btn depth-1 s-margin" href="index.php?page=cliente&mode=DEL&clientid={{clientid}}"><span class="ion-trash-a"></span></a>
                </td>
            </tr>
            {{endfor clientes}}
        </tbody>
        <footer>
            <tr>
                <th>
                </th>
            </tr>
        </footer>
    </table>
</section>