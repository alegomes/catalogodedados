var busca = {
	setupBusca: function(entidade) {
		$('#loading').hide();
		$('#q').focus();
	
		var defaultValue = "Busca por " + entidade;
	
		$("#q").keyup(function(data, event) {
			if (this.value != defaultValue && this.value != null && this.value.length > 3) {
				$(this.form).submit();
				//$(".emprestimos").remove();
			}
		})
	
		$("#q").focus(function(){
			if ($(this).attr("value") == defaultValue) {
				$(this).attr('value', '');
			}
		});
	
		$("#q").focusout(function(){
			if ($(this).attr("value").length == 0) {
				$(this).attr('value', defaultValue);
			}
		});
	
		$("#pesquisa")
		    .bind("ajax:beforeSend", function() { $('#loading').toggle(); })
		    .bind("ajax:complete", function() { $('#loading').toggle(); })
		    .bind("ajax:success", function(data, status, xhr) {
		      //$("#avisos").html(status);
	    });
	}
}
