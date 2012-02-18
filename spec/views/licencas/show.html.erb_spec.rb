require 'spec_helper'

describe "licencas/show" do
  before(:each) do
    @licenca = assign(:licenca, stub_model(Licenca,
      :nome => "Nome",
      :url => "Url"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
  end
end
