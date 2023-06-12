<?php include_once ("dbbaglanti.php") /* Veritabanı dosyamızı dahil ettik. */ ?>

<html lang="tr">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Yerel İşletme Rehberi</title>
    <link rel="stylesheet" href="pop-up.css"> <!-- Pop-up için harici CSS -->
    <link rel="stylesheet" href="style.css"> <!-- Genel CSS -->

</head>
<body>
    
<br>
<!-- POP UP -->
<div class="popup">
  <div class="popup-icerik">
    <img style="width:80px; height:auto; "src="img/uyari.gif" alt="Görsel açıklaması">
    <p>Kaliteli bir kullanıcı deneyimi için lütfen sayfayı <b>Chrome</b> tarayıcısında ve <b>%90</b> yakınlaştırma mesafesinde kullanınız. </p>
    <button class="kapat-buton">Kapat</button>
  </div>
</div>
<br>

<!-- ÜST BÖLÜM -->
<div style="background-color:#f2f3f5; border-radius:15px; padding-top: 1px;">
    <h1 style="font-size:40px; text-align:center;">Yerel İşletme Rehberi</h1>
    <h2 style="font-size:20px; text-align:center;">"Ara, keşfet ve yerel işletmeleri bulmak için yola çık!"</h2>
    <a href="firma_liste.php"><input type="button" value="Firma Listesi" name="firmaListe"></a>
</div>
<br>

<!-- ALT BÖLÜM -->
<div style="background-color:#f2f3f5; border-radius:15px; ">
<h2 style="font-size:16px; text-align:center; color: #3c3c3c;">Sizde aşağıdaki formu doldurarak kendi işletmenizi ekleyebilirsiniz.</h2>
<br>

    <form name="firmalar" id="firmalar" action="" method="post">
    <label>Firma Adı*</label>
        <input type="text" id="isim" name="isim" required><br>
    <label>Telefon*</label>
        <input type="tel" name="tel" required><br>
    <label>E-posta*</label>
        <input type="email" name="eposta" required><br>
    <label>Adres*</label>
        <input type="text" name="adres" required><br>
        <select id="firma-opsiyon" name="firma_turu">
            <option value="1">Eğitim</option>
            <option value="2">Enerji</option>
            <option value="3">Finans</option>
            <option value="4">Gıda</option>
            <option value="5">İnşaat</option>
            <option value="6">Maden</option>
            <option value="7">Otomotiv</option>
            <option value="8">Tekstil</option>
            <option value="9">Turizm</option>
            <option value="10">Konaklama</option>
            <option value="11">Lojistik</option>
            <option value="12">Yazılım</option>
        </select><br><br>
        <input type="submit" value="Kaydet" name="kaydet"> 

    </form>
    </div>

    <!-- FOOTER -->
    <footer>&copy; 2023 | Ömer Faruk Vuran - Hamza Yurt - Metin Berkay Şen</footer>

    <script src="pop-up.js"></script> <!-- Pop-up için harici JS -->
</body>

<?php
if (isset($_POST['kaydet'])){
    $fi=$_POST['isim'];
    $ftel=$_POST['tel'];
    $feposta=$_POST['eposta'];
    $fadres=$_POST['adres'];
    $ft=$_POST['firma_turu'];

    $sorgu="INSERT INTO firmalar (firma_isim, firma_tel, firma_eposta, firma_adres, firma_tur)
    
    VALUES ('$fi','$ftel','$feposta','$fadres','$ft')";

    $sorguCalistir = $dbbaglanti -> query($sorgu);
    
    if ($sorguCalistir) echo "Kayıt başarıyla eklendi.!";
    else echo "Maalesef kayıt eklenemedi..";
}
?>
</html>