require 'spec_helper'

describe "licencas/new" do
  before(:each) do
    assign(:licenca, stub_model(Licenca,
      :nome => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new licenca form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => licencas_path, :method => "post" do
      assert_select "input#licenca_nome", :name => "licenca[nome]"
      assert_select "input#licenca_url", :name => "licenca[url]"
    end
  end
end
