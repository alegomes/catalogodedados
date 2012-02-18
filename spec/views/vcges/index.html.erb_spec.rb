require 'spec_helper'

describe "vcges/index" do
  before(:each) do
    assign(:vcges, [
      stub_model(Vcge,
        :termo_pai => nil,
        :termo => "Termo"
      ),
      stub_model(Vcge,
        :termo_pai => nil,
        :termo => "Termo"
      )
    ])
  end

  it "renders a list of vcges" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Termo".to_s, :count => 2
  end
end
