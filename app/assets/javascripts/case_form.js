$(document).ready(function() {
  var $form = $("#patient-form");
  if ($form.length) {
    $form.conversationalForm({
      formEl: document.getElementById("patient-form"),
      context: document.getElementById("col-form"),
      userImage: "https://static1.disfrazzes.com/productos/miniaturas3/foto-661RU.jpg",
      robotImage: "https://images.duckduckgo.com/iu/?u=https%3A%2F%2Ftse4.mm.bing.net%2Fth%3Fid%3DOIP.TYmMcjbcOJE_2Dwi2acjcgELEs%26pid%3D15.1&f=1",
      submitCallback: function() {
        // on gère nous même la soumission du form
        // pour éviter de voir le form le temps de la soumission
        // Affiche un loader à la place.
        $("#patient-form").submit().hide();
        $("#form-loading").show();
        window.ConversationalForm.remove();
      }
    });
  }
});
