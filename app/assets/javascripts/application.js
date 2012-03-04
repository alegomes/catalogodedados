// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require_tree .

function hideDataAtualizacaoDeDataset() {
	var nao_ha_data = $('#dataset_nao_ha_data').attr('checked');
	if(nao_ha_data == 'checked') {
		$('#select_field_data').hide();
	}
}

function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent('.field').find('table').append(content.replace(regexp, new_id));
}

function remove_fields(link) {
  $(link).siblings("input[type=hidden]").val('true');
  $(link).parents("tr").hide();
}

function setupGoogleAnalytics() {
	  var _gaq = _gaq || [];
	  _gaq.push(['_setAccount', 'UA-29707573-1']);
	  _gaq.push(['_trackPageview']);

	  (function() {
	    var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
	    ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
	    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
	  })();
}

$(function() {
	hideDataAtualizacaoDeDataset();
	setupGoogleAnalytics();
});
