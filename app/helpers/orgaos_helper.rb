module OrgaosHelper
	
	# From https://github.com/ryanb/railscasts-episodes/blob/master/episode-197/surveysays/app/helpers/application_helper.rb
	def link_to_add_links(name, f, association)
    new_object = f.object.class.reflect_on_association(association).klass.new
    fields = f.fields_for(association, new_object, :child_index => "new_#{association}") do |builder|
      render(association.to_s, :f => builder)
    end
    link_to_function(name, "add_fields(this, \"#{association}\", \"#{escape_javascript(fields)}\")")
  end

	# From https://github.com/ryanb/railscasts-episodes/blob/master/episode-197/surveysays/app/helpers/application_helper.rb
  def link_to_remove_fields(name, f)
    f.hidden_field(:_destroy) + link_to_function(name, "remove_fields(this)")
  end
end
