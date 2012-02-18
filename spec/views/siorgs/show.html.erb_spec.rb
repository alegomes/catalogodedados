require 'spec_helper'

describe "siorgs/show" do
  before(:each) do
    @siorg = assign(:siorg, stub_model(Siorg,
      :nome => "Nome",
      :codigo => "Codigo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Codigo/)
  end
end
