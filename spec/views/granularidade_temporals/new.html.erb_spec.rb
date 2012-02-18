require 'spec_helper'

describe "granularidade_temporals/new" do
  before(:each) do
    assign(:granularidade_temporal, stub_model(GranularidadeTemporal,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new granularidade_temporal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => granularidade_temporals_path, :method => "post" do
      assert_select "input#granularidade_temporal_nome", :name => "granularidade_temporal[nome]"
    end
  end
end
