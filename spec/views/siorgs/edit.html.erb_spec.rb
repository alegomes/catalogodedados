require 'spec_helper'

describe "siorgs/edit" do
  before(:each) do
    @siorg = assign(:siorg, stub_model(Siorg,
      :nome => "MyString",
      :codigo => "MyString"
    ))
  end

  it "renders the edit siorg form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => siorgs_path(@siorg), :method => "post" do
      assert_select "input#siorg_nome", :name => "siorg[nome]"
      assert_select "input#siorg_codigo", :name => "siorg[codigo]"
    end
  end
end
