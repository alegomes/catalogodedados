require 'spec_helper'

describe "tipo_links/edit" do
  before(:each) do
    @tipo_link = assign(:tipo_link, stub_model(TipoLink,
      :tipo => "MyString"
    ))
  end

  it "renders the edit tipo_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_links_path(@tipo_link), :method => "post" do
      assert_select "input#tipo_link_tipo", :name => "tipo_link[tipo]"
    end
  end
end
