require 'spec_helper'

describe "formato_datasets/show" do
  before(:each) do
    @formato_dataset = assign(:formato_dataset, stub_model(FormatoDataset,
      :nome => "Nome"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
  end
end
