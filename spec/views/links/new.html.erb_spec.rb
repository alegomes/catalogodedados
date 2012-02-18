require 'spec_helper'

describe "links/new" do
  before(:each) do
    assign(:link, stub_model(Link,
      :tipo_link => nil,
      :titulo => "MyString",
      :url => "MyString"
    ).as_new_record)
  end

  it "renders new link form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => links_path, :method => "post" do
      assert_select "input#link_tipo_link", :name => "link[tipo_link]"
      assert_select "input#link_titulo", :name => "link[titulo]"
      assert_select "input#link_url", :name => "link[url]"
    end
  end
end
