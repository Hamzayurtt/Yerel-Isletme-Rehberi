
<!DOCTYPE html>
<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yerel İşletme Rehberi</title>
    <style>
        
        body {
        background-image: url("img/green.webp");
        background-size: cover;
        background-position: center;
        margin: 0;
        padding: 0;
        opacity: 0.9;
        }

        * {
        font-family: 'Open Sans', sans-serif;
        color:#f2f3f5;
        font-size: 20px;
        }

        div {
        max-width: 1500px;
        padding-left: 30px;
        padding-right: 30px;
        padding-top: 20px;
        padding-bottom: 20px;
        }

        .sag-ust-kose {
        position: absolute;
        top: 0;
        right: 0;
            }

        .sag-ust-kose img {
        width: 150px; 
        height: 150px;
        }


    </style>
</head>
<body>

<div class="sag-ust-kose">
<a href="firma_giris.php"><img src="img/red.gif" alt=""></a>
</div>
    <div>

<?php
include_once("dbbaglanti.php");

$sorgu = "SELECT * FROM firmalar ORDER BY firma_tur ASC";
$sc = $dbbaglanti->query($sorgu);

// Hocam istemiş olduğunuz gibi, veritabanından gelen firma türlerini ekrana yazdırmadan önce aynı olanları sıraladık ve tanımladık. 
// Böylece firma listesine giren kullanıcı aradığını daha kolay şekilde bulabilecek. <3

$firmaTurleri = array(
    1 => "Eğitim",
    2 => "Enerji",
    3 => "Finans",
    4 => "Gıda",
    5 => "İnşaat",
    6 => "Maden",
    7 => "Otomotiv",
    8 => "Tekstil",
    9 => "Turizm",
    10 => "Konaklama",
    11 => "Lojistik",
    12 => "Yazılım"
);

$firmaGruplari = array();

foreach ($sc as $k => $m) {
    $firmaTur = $m['firma_tur'];
    $firmaIsim = $m['firma_isim'];
    $firmaTel = $m['firma_tel'];
    $firmaEposta = $m['firma_eposta'];
    $firmaAdres = $m['firma_adres'];

    if (!isset($firmaGruplari[$firmaTur])) {
        $firmaGruplari[$firmaTur] = array();
    }

    $firmaGruplari[$firmaTur][] = array(
        'firma_isim' => $firmaIsim,
        'firma_tel' => $firmaTel,
        'firma_eposta' => $firmaEposta,
        'firma_adres' => $firmaAdres
    );
}

foreach ($firmaTurleri as $turId => $turAdi) {
    echo "<h3>$turAdi</h3>";

    if (isset($firmaGruplari[$turId])) {
        echo "<ul>";

        foreach ($firmaGruplari[$turId] as $firma) {
            $firmaIsim = $firma['firma_isim'];
            $firmaTel = $firma['firma_tel'];
            $firmaEposta = $firma['firma_eposta'];
            $firmaAdres = $firma['firma_adres'];

            echo "<li>$firmaIsim - Tel: $firmaTel - Eposta: $firmaEposta - Adres: $firmaAdres</li>";
        }

        echo "</ul>";
    }
}
?>
</div>
</body>
</html>



