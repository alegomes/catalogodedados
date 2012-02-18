require 'spec_helper'

describe "tipo_links/new" do
  before(:each) do
    assign(:tipo_link, stub_model(TipoLink,
      :tipo => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_links_path, :method => "post" do
      assert_select "input#tipo_link_tipo", :name => "tipo_link[tipo]"
    end
  end
end
