require 'spec_helper'

describe "vcges/new" do
  before(:each) do
    assign(:vcge, stub_model(Vcge,
      :termo_pai => nil,
      :termo => "MyString"
    ).as_new_record)
  end

  it "renders new vcge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vcges_path, :method => "post" do
      assert_select "input#vcge_termo_pai", :name => "vcge[termo_pai]"
      assert_select "input#vcge_termo", :name => "vcge[termo]"
    end
  end
end
