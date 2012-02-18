require 'spec_helper'

describe "tipo_datasets/show" do
  before(:each) do
    @tipo_dataset = assign(:tipo_dataset, stub_model(TipoDataset,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
