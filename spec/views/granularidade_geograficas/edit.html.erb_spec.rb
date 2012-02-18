require 'spec_helper'

describe "granularidade_geograficas/edit" do
  before(:each) do
    @granularidade_geografica = assign(:granularidade_geografica, stub_model(GranularidadeGeografica,
      :nome => "MyString"
    ))
  end

  it "renders the edit granularidade_geografica form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => granularidade_geograficas_path(@granularidade_geografica), :method => "post" do
      assert_select "input#granularidade_geografica_nome", :name => "granularidade_geografica[nome]"
    end
  end
end
