require 'spec_helper'

describe "granularidade_geograficas/index" do
  before(:each) do
    assign(:granularidade_geograficas, [
      stub_model(GranularidadeGeografica,
        :nome => "Nome"
      ),
      stub_model(GranularidadeGeografica,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of granularidade_geograficas" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
