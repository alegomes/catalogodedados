require 'spec_helper'

describe "formato_datasets/new" do
  before(:each) do
    assign(:formato_dataset, stub_model(FormatoDataset,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new formato_dataset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => formato_datasets_path, :method => "post" do
      assert_select "input#formato_dataset_nome", :name => "formato_dataset[nome]"
    end
  end
end
