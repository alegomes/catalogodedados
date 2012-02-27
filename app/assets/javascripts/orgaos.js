//# Place all the behaviors and hooks related to the matching controller here.
//# All this logic will automatically be available in application.js.
//# You can use CoffeeScript in this file: http://jashkenas.github.com/coffee-script/
function add_fields(link, association, content) {
  var new_id = new Date().getTime();
  var regexp = new RegExp("new_" + association, "g")
  $(link).parent('.field').find('table').append(content.replace(regexp, new_id));
}

function remove_fields(link) {
  $(link).siblings("input[type=hidden]").val('true');
  $(link).parents("tr").hide();
}