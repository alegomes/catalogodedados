require 'spec_helper'

describe "granularidade_geograficas/new" do
  before(:each) do
    assign(:granularidade_geografica, stub_model(GranularidadeGeografica,
      :nome => "MyString"
    ).as_new_record)
  end

  it "renders new granularidade_geografica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => granularidade_geograficas_path, :method => "post" do
      assert_select "input#granularidade_geografica_nome", :name => "granularidade_geografica[nome]"
    end
  end
end
