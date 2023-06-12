<?php
    $server="localhost";
    $db="yerel-isletme-rehberi";
    $id="root";
    $password="";

    $dbbaglanti = New PDO ("mysql:host=$server; dbname=$db; charset=utf8", $id,$password);

    /* Sayfada gözükmemesi adına Database bağlantı kontrolünü, yorum satırına aldık.  */
    
    /*
    if($dbbaglanti) echo "Bağlantı başarılı bir şekilde gerçekleştirildi.";
    else echo "Maalesef bağlantı gerçekleştirilemedi.";
    */

?>