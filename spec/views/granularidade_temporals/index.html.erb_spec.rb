require 'spec_helper'

describe "granularidade_temporals/index" do
  before(:each) do
    assign(:granularidade_temporals, [
      stub_model(GranularidadeTemporal,
        :nome => "Nome"
      ),
      stub_model(GranularidadeTemporal,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of granularidade_temporals" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
