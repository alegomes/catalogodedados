require 'spec_helper'

describe "granularidade_temporals/show" do
  before(:each) do
    @granularidade_temporal = assign(:granularidade_temporal, stub_model(GranularidadeTemporal,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
