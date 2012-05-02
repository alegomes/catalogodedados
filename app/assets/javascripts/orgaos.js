//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/

var orgao = {
	
	buscaSiorg: function(field) {
		$('#nome_siorg').html('...');
		$.ajax({
			url: '/siorgs/search',
			data: 'codigo_siorg=' + field.val()
		});
	},
	
	setupBuscaSiorg: function() {

		$('#codigo_siorg_field').focusout(function() {
			orgao.buscaSiorg($(this));
		});
		
		$('#codigo_siorg_field').keydown(function(event) {
		  if ( event.which == 13 ) {
			orgao.buscaSiorg($(this));
			event.preventDefault();
			event.stopPropagation();
		   }
		});
	},
	
	setupBuscaOrgao: function() {
		$('#loading').hide();
		$('#q').focus();
		
		$('#q').keyup(function(data, event) {
			if (this.value != null && this.value.length > 3) {
				$(this.form).submit();
				//$(".emprestimos").remove();
			}
		})
		
		var defaultValue = 'Busca por Órgaos';
		
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

jQuery (function() {
	orgao.setupBuscaOrgao();
	orgao.setupBuscaSiorg();
});