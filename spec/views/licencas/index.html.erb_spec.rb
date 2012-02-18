require 'spec_helper'

describe "licencas/index" do
  before(:each) do
    assign(:licencas, [
      stub_model(Licenca,
        :nome => "Nome",
        :url => "Url"
      ),
      stub_model(Licenca,
        :nome => "Nome",
        :url => "Url"
      )
    ])
  end

  it "renders a list of licencas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
  end
end
