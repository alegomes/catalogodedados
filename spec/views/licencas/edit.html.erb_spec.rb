require 'spec_helper'

describe "licencas/edit" do
  before(:each) do
    @licenca = assign(:licenca, stub_model(Licenca,
      :nome => "MyString",
      :url => "MyString"
    ))
  end

  it "renders the edit licenca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => licencas_path(@licenca), :method => "post" do
      assert_select "input#licenca_nome", :name => "licenca[nome]"
      assert_select "input#licenca_url", :name => "licenca[url]"
    end
  end
end
