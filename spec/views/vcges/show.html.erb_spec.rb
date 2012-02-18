require 'spec_helper'

describe "vcges/show" do
  before(:each) do
    @vcge = assign(:vcge, stub_model(Vcge,
      :termo_pai => nil,
      :termo => "Termo"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Termo/)
  end
end
