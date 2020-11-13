<?php

require_once "models/mnt/categorias.model.php";

function run(){
    $viewData = array();
    $viewData["cln_txtfilter"] = "";
    if(isset($_SESSION["cln_txtfilter"])){
        $viewData["cln_txtfilter"] = $_SESSION["cln_txtfilter"];
    }

    if(isset($_POST["btnFiltrar"])){
        mergeFullArrayTo($_POST, $viewData);
        $_SESSION["cln_txtfilter"] = $viewData["cln_txtfilter"];
    }

    if($viewData["cln_txtfilter"] === ""){
        $viewData["categorias"] = getAllCategorias();
    }
    else{
        $viewData["categorias"] = getCategoriaPorFiltro($viewData["cln_txtfilter"]);
    }

    renderizar("mnt/categorias", $viewData);
}
run();

?>