<?php 

function controleurPrincipal($action){
    $lesActions = array();
    $lesActions["defaut"]="accueil.php";
    $lesActions["album"]="album.php";
    $lesActions["profil"] = "monProfil.php";
    $lesActions["updProfil"] = "updProfil.php";
    $lesActions["form"]="form.php";
    $lesActions["connexion"] = "connexion.php";
    $lesActions["inscription"] = "inscription.php";
    $lesActions["deconnexion"] = "deconnexion.php";
    $lesActions["aya"] = "aya.php";
    $lesActions["conditiong"] = "conditiong.php";
    $lesActions["sos"] = "sos.php";
    $lesActions["purpose"] = "purpose.php";


if (array_key_exists ( $action , $lesActions )){
    return $lesActions[$action];
}
else{
    return $lesActions["defaut"];
}

}

?>