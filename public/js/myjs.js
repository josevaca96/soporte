// devanecer alertas
$(document).ready(function() {
    setTimeout(function() {
        $("#msj").fadeOut(1500);
    },3000);
});
$(document).ready(function() {
    setTimeout(function() {
        $("#alert_danger").fadeOut(3000);
    },6000);
});
// devanecer alertas


// dataTable
$(document).ready( function () {
    $('#activos_search').DataTable();
} );

