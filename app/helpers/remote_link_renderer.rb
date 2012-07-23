class RemoteLinkRenderer < WillPaginate::ActionView::LinkRenderer
 def link(text, target, attributes = {})
		super(text, target, attributes.merge('data-remote' => true))
  end
end