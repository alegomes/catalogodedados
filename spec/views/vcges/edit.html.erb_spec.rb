require 'spec_helper'

describe "vcges/edit" do
  before(:each) do
    @vcge = assign(:vcge, stub_model(Vcge,
      :termo_pai => nil,
      :termo => "MyString"
    ))
  end

  it "renders the edit vcge form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => vcges_path(@vcge), :method => "post" do
      assert_select "input#vcge_termo_pai", :name => "vcge[termo_pai]"
      assert_select "input#vcge_termo", :name => "vcge[termo]"
    end
  end
end
