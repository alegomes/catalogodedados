require 'spec_helper'

describe "formato_datasets/edit" do
  before(:each) do
    @formato_dataset = assign(:formato_dataset, stub_model(FormatoDataset,
      :nome => "MyString"
    ))
  end

  it "renders the edit formato_dataset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => formato_datasets_path(@formato_dataset), :method => "post" do
      assert_select "input#formato_dataset_nome", :name => "formato_dataset[nome]"
    end
  end
end
