require 'spec_helper'

describe "tipo_datasets/edit" do
  before(:each) do
    @tipo_dataset = assign(:tipo_dataset, stub_model(TipoDataset,
      :nome => "MyString"
    ))
  end

  it "renders the edit tipo_dataset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => tipo_datasets_path(@tipo_dataset), :method => "post" do
      assert_select "input#tipo_dataset_nome", :name => "tipo_dataset[nome]"
    end
  end
end
