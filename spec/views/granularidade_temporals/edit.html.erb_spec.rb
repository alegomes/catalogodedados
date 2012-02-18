require 'spec_helper'

describe "granularidade_temporals/edit" do
  before(:each) do
    @granularidade_temporal = assign(:granularidade_temporal, stub_model(GranularidadeTemporal,
      :nome => "MyString"
    ))
  end

  it "renders the edit granularidade_temporal form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => granularidade_temporals_path(@granularidade_temporal), :method => "post" do
      assert_select "input#granularidade_temporal_nome", :name => "granularidade_temporal[nome]"
    end
  end
end
