require 'spec_helper'

describe "granularidade_geograficas/show" do
  before(:each) do
    @granularidade_geografica = assign(:granularidade_geografica, stub_model(GranularidadeGeografica,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
