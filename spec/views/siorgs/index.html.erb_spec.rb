require 'spec_helper'

describe "siorgs/index" do
  before(:each) do
    assign(:siorgs, [
      stub_model(Siorg,
        :nome => "Nome",
        :codigo => "Codigo"
      ),
      stub_model(Siorg,
        :nome => "Nome",
        :codigo => "Codigo"
      )
    ])
  end

  it "renders a list of siorgs" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Codigo".to_s, :count => 2
  end
end
