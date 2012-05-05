function toogleDataAtualizacao() {
	$('#select_field_data').fadeToggle();
}

var datasets = {
	setupAutocompleteOrgao: function() {
	
		$("input#orgao_nome").autocomplete({
				source: "/orgaos/search",
				select: function( event, ui ) {
					$("input#dataset_orgao_id").val(ui.item.id);
					//alert(this.value + " - " + ui.item + " - " + ui.item.value + " - " + ui.item.id);
				}
		});
		
		var defaultValue = "Digite o nome do órgão...";
		
		$("#orgao_nome").focus(function(){
			if ($(this).attr("value") == defaultValue) {
				//$(this).attr('value', '');
			}
		});

		$("#orgao_nome").focusout(function(){
			if ($(this).attr("value").length == 0) {
				$(this).attr('value', defaultValue);
			}
			
			if ($("input#dataset_orgao_id").attr("value").length == 0) {
				$(this).attr('value', defaultValue);
			}
		});
		
	}
}

jQuery (function() {
		// Que garantia eu tenho de que o busca.js sera carregado antes do datasets.js?!
	busca.setupBusca("Datasets");
	datasets.setupAutocompleteOrgao();
	$("input#orgao_nome").focus();
	
});