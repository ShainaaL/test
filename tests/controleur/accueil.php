<?php

if ( $_SERVER["SCRIPT_FILENAME"] == __FILE__){
    $racine="..";
}

include "$racine/vue/entete.html.php";
include "$racine/vue/vueAccueil.php";
include "$racine/vue/pied.html.php";
?>