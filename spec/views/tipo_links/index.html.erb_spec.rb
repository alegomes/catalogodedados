require 'spec_helper'

describe "tipo_links/index" do
  before(:each) do
    assign(:tipo_links, [
      stub_model(TipoLink,
        :tipo => "Tipo"
      ),
      stub_model(TipoLink,
        :tipo => "Tipo"
      )
    ])
  end

  it "renders a list of tipo_links" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Tipo".to_s, :count => 2
  end
end
