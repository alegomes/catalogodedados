require 'spec_helper'

describe "tipo_datasets/index" do
  before(:each) do
    assign(:tipo_datasets, [
      stub_model(TipoDataset,
        :nome => "Nome"
      ),
      stub_model(TipoDataset,
        :nome => "Nome"
      )
    ])
  end

  it "renders a list of tipo_datasets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
  end
end
