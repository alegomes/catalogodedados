require 'spec_helper'

describe "orgaos/edit" do
  before(:each) do
    @orgao = assign(:orgao, stub_model(Orgao,
      :nome => "MyString",
      :url => "MyString",
      :url_sobre => "MyString",
      :url_competencias => "MyString",
      :url_historico => "MyString",
      :url_organograma => "MyString",
      :url_quem_e_quem => "MyString",
      :siorg => nil,
      :licenca => nil
    ))
  end

  it "renders the edit orgao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => orgaos_path(@orgao), :method => "post" do
      assert_select "input#orgao_nome", :name => "orgao[nome]"
      assert_select "input#orgao_url", :name => "orgao[url]"
      assert_select "input#orgao_url_sobre", :name => "orgao[url_sobre]"
      assert_select "input#orgao_url_competencias", :name => "orgao[url_competencias]"
      assert_select "input#orgao_url_historico", :name => "orgao[url_historico]"
      assert_select "input#orgao_url_organograma", :name => "orgao[url_organograma]"
      assert_select "input#orgao_url_quem_e_quem", :name => "orgao[url_quem_e_quem]"
      assert_select "input#orgao_siorg", :name => "orgao[siorg]"
      assert_select "input#orgao_licenca", :name => "orgao[licenca]"
    end
  end
end
