$(document).ready(function() {
	console.log('Ready disparado');

	$('#idade').keyup(function() {
		var valor = document.getElementById("idade").value;

		if ($.isNumeric(valor)) {
			console.log("é numero");
		} else {
			$(this).val(this.value.replace(/\D/g, ''));
		}

		if (valor >= 130 || valor <= 0) {
			alert("Idade com valor inválido!");
		}
	});

	$("#form").validate({
		rules : {
			"nome" : {
				required : true,
				minlength : 1
			},
			"idade" : {
				required : true,

			}
		},
		messages : {
			"nome" : {
				required : "Por favor, entre com a nome!"
			},
			"idade" : {
				required : "Por favor, entre com a idade!"
			}
		},
		submitHandler : function(form) {
			var checkado = pegaQuantidade();

			if (checkado) {
				alert('Formulario validado');
				return true;
			} else {
				return false;
			}
		}
	});
});



function contaCheckbox(selecionados) {
	var inputs, x, selecionados = 0;
	inputs = document.getElementsByTagName('input');
	for (x = 0; x < inputs.length; x++) {
		if (inputs[x].type == 'checkbox') {
			if (inputs[x].checked == true){//}&& inputs[x].id == 'verHoroscopo') {
				selecionados++;
			}
		}
	}
	console.log(selecionados);
	return selecionados;
}

function pegaQuantidade() {
	var total;
	total = contaCheckbox();

	if (total == 1) {
		return true;
	} else if (total > 1) {
		alert("Quantidade retornada: " + total
				+ ". Selecione somente uma opção");
		return false;
	} else {
		alert("Selecione pelo menos um checkbox");
		return false;
	}
}
