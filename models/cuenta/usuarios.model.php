<?php

require_once "libs/dao.php";


function addNewCuenta($username, $userpswd, $fchingreso, $nombre_user, $apellido_user, $fecha_nacimiento_user, $numero_identidad_user,
 $direccion_residencia_user, $telefono_user1, $telefono_user2, $email_user, $ciudad_user, $sexo_user){
    $inssql = "INSERT INTO `usuario`(`username`,`userpswd`,`userfching`,`userpswdest`,`userpswdexp`,`userest`,`useractcod`,`userpswdchg`,`usertipo`,`nombre_user`,
`apellido_user`,`fecha_nacimiento_user`,`numero_identidad_user`,`direccion_residencia_user`,`telefono_user1`,`telefono_user2`,`email_user`,`ciudad_user`,
`sexo_user`)VALUES('momo','kjdbnkjs','2020-12-12','VGT',NULL,'ACT','',NULL,'SYN','Momo','Portillo','1996-08-29','0801199615915','Col. Cerro Grande','32345058',
'23234545','moyporti15@gmail.com','Tegucigalpa','MAS');";
    return ejecutarNonQuery(sprintf($inssql, $username, $userpswd,$fchingreso,$nombre_user, $apellido_user, $fecha_nacimiento_user, 
    $numero_identidad_user, $direccion_residencia_user, $telefono_user1, $telefono_user2, $email_user, $ciudad_user, $sexo_user));
}



?> 