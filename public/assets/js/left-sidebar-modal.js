
document.addEventListener('DOMContentLoaded', function() {
  var button = document.getElementById('showModalButton');
  var button2 = document.getElementsByClassName('showModalButton');
  var modal = document.getElementById('myModal');
  button2.onclick = function() {
    console.log("check button2 click");
    // modal.style.display = 'block';
  }
  button.onclick = function() {
    console.log("check button click");
    modal.style.display = 'block';
  }

  var closeButtons = document.getElementsByClassName('close');
  for (var i = 0; i < closeButtons.length; i++) {
    closeButtons[i].onclick = function() {
      modal.style.display = 'none';
    }
  }

  window.onclick = function(event) {
    if (event.target == modal) {
      modal.style.display = "none";
    }
  }
});
