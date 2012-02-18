require 'spec_helper'

describe "tipo_links/show" do
  before(:each) do
    @tipo_link = assign(:tipo_link, stub_model(TipoLink,
      :tipo => "Tipo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Tipo/)
  end
end
