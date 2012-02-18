require 'spec_helper'

describe "formato_datasets/index" do
  before(:each) do
    assign(:formato_datasets, [
      stub_model(FormatoDataset,
        :nome => "Nome"
      ),
      stub_model(FormatoDataset,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of formato_datasets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
