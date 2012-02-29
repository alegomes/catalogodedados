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
		
		// Nao funciona pq?
		$('#codigo_siorg_field').keydown(function(event) {
			alert('keypressed='+event.which);
		  if ( event.which == 13 ) {
			orgao.buscaSiorg($(this));
			event.preventDefault();
		   }
		});
	}
	
}

jQuery (function() {
	orgao.setupBuscaSiorg();
});