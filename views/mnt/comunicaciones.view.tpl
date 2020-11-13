<section><h1>{{modedsc}}</h1></section>
<hr/>
<form action="index.php?page=comunicaciones&mode={{mode}}&clientid={{clientid}}" method="POST">
<section class="row">
    <h2>Filtrar por</h2>
    <div class="col-sm-12 col-md-10">
        <label class="col-sm-12 col-md-3" for="cln_txtfilter">Codigo | Usuario</label>
        <input class="col-sm-12 col-md-9" type="text" name="cln_txtfilter" id="cln_txtfilter" value="{{cln_txtfilter}}" placeholder="Codigo | Usuario"/>
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
                Fecha de Comunicacion
                </th>
                <th>
                Usuario
                </th>
                <th>
                Tipo
                </th>
                <th>
                <a class="btn depth-1 s-margin" href="index.php?page=comunicacion&mode=INS&clientid={{clientid}}&cmnid=0"><span class="ion-plus-circled"></span></a><br/>
                </th>
            </tr>
        </thead>
        <tbody>
            {{foreach comunicaciones}}
            <tr>
                <td>
                {{cmnid}}
                </td>
                <td>
                {{cmnfching}}
                </td>
                <td>
                {{cmnusring}} 
                </td>
                <td>
                {{cmntipo}}
                </td>
                <td class="center">
                <a class="btn depth-1 s-margin" href="index.php?page=comunicacion&mode=DSP&clientid={{clientid}}&cmnid={{cmnid}}"><span class="ion-eye"></span></a>                
                </td>
            </tr>
            {{endfor comunicaciones}}
        </tbody>
        <footer>
            <tr>
                <th>
                </th>
            </tr>
        </footer>
    </table>
</section>