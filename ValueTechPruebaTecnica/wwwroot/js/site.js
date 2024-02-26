$(document).ready(function () {
    $.ajax({
        type: "POST",
        url: "Home/ObtenerRegiones",
        dataType: "json",
        success: function (data) {
            var datos = JSON.parse(data);
            $(datos).each(function (index, value) {
                var option = $(document.createElement('option'));
                option.text(value.region);
                option.val(value.idRegion);
                $("#cboRegiones").append(option);
            });
        },
        error: function (data) {
            var option = $(document.createElement('option'));
            option.text("Sin Registros");
            option.val("");
            $("#cboRegiones").append(option);
        }
    });
    $('#cboRegiones').on('change', ObtenerComunasPorRegion)
    $('#cboComunas').on('change', ObtenerInfoPorComuna)
    $('#btnActualizaDatos').on('click', ActualizarInfoComuna)
});

function ObtenerComunasPorRegion() {
    var idRegion = $("#cboRegiones option:selected").val();
    $("#cboComunas").find('option').not(':first').remove();
    $("#txtPoblacion").val("");
    $("#txtDensidad").val("");
    $("#txtSuperficie").val("");
    $.ajax({type: "POST",
        url: "Home/ObtenerComunasPorRegion",
        dataType: "json",
        data: {idRegion},
        success: function (data) {
            var datos = JSON.parse(data);
            $(datos).each(function (index, value) {
                var option = $(document.createElement('option'));
                option.text(value.comuna);
                option.val(value.idComuna);
                $("#cboComunas").append(option);
            });
        },
        error: function (msg) {
            var option = $(document.createElement('option'));
            option.text("Sin Registros");
            option.val("");
            $("#cboComunas").append(option);
        }
    });

}

function ObtenerInfoPorComuna() {
    var idComuna = $("#cboComunas option:selected").val();
    $.ajax({
        type: "POST",
        url: "Home/ObtenerInfoComuna",
        dataType: "json",
        data: { idComuna },
        success: function (data) {
            var datos = JSON.parse(data);
            $(datos).each(function (index, value) {
                $("#txtSuperficie").val(value.info.Superficie);
                $(value.info.Poblacion).each(function (index, val) {
                    $("#txtPoblacion").val(val.result);
                    $("#txtDensidad").val(val.Densidad);
                });
            });
        },
        error: function (data) {
            $("#txtSuperficie").val("");
            $("#txtPoblacion").val("");
            $("#txtDensidad").val("");
        }
    });
}
function ActualizarInfoComuna() {
    var idComuna = $("#cboComunas option:selected").val();
    var txtSuperficie = $("#txtSuperficie").val();
    var txtDensidad = $("#txtDensidad").val();
    var txtPoblacion = $("#txtPoblacion").val();
    var comunaInfo = 
        { idComuna: idComuna, comSuperficie: txtSuperficie, comDensidad: txtDensidad, comPoblacion: txtPoblacion }
    
    $.ajax({
        url: "Home/ActualizaInfoComuna",
        type: 'POST',
        dataType: 'json',
        data: comunaInfo,
        
        success: function (data) {
            if (data) {
                alert("Actualizacion con Exito")
            } else {
                alert("Error al Actualizar")
            }
        },
        error: function (data) {
            alert("Error al Actualizar")
        }
    });
    debugger;
}

