require 'spec_helper'

describe "tipo_datasets/new" do
  before(:each) do
    assign(:tipo_dataset, stub_model(TipoDataset,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new tipo_dataset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_datasets_path, :method => "post" do
      assert_select "input#tipo_dataset_nome", :name => "tipo_dataset[nome]"
    end
  end
end
