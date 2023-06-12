// Pop-up açma işlemi için bir fonksiyon oluşturulur.
function popupAc() {
    document.querySelector(".popup").style.display = "block";
  }
  
  // Pop-up kapatma işlemi için bir fonksiyon oluşturulur.
  function popupKapat() {
    document.querySelector(".popup").style.display = "none";
  }
  
  // Pop-up kapatma butonuna tıklama işlemi için 'event listener' eklenir.
  document.querySelector(".kapat-buton").addEventListener("click", popupKapat);
  
  // Sayfa yüklendiğinde pop-up otomatik olarak açılır.
  window.onload = function() {
    popupAc();
  };