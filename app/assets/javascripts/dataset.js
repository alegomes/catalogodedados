function toogleDataAtualizacao() {
	$('#select_field_data').fadeToggle();
}

jQuery (function() {
		// Que garantia eu tenho de que o busca.js sera carregado antes do datasets.js?!
	busca.setupBusca("Datasets");
});