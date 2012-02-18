require 'spec_helper'

describe "siorgs/new" do
  before(:each) do
    assign(:siorg, stub_model(Siorg,
      :nome => "MyString",
      :codigo => "MyString"
    ).as_new_record)
  end

  it "renders new siorg form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => siorgs_path, :method => "post" do
      assert_select "input#siorg_nome", :name => "siorg[nome]"
      assert_select "input#siorg_codigo", :name => "siorg[codigo]"
    end
  end
end
