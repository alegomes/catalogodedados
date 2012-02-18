require 'spec_helper'

describe "orgaos/index" do
  before(:each) do
    assign(:orgaos, [
      stub_model(Orgao,
        :nome => "Nome",
        :url => "Url",
        :url_sobre => "Url Sobre",
        :url_competencias => "Url Competencias",
        :url_historico => "Url Historico",
        :url_organograma => "Url Organograma",
        :url_quem_e_quem => "Url Quem E Quem",
        :siorg => nil,
        :licenca => nil
      ),
      stub_model(Orgao,
        :nome => "Nome",
        :url => "Url",
        :url_sobre => "Url Sobre",
        :url_competencias => "Url Competencias",
        :url_historico => "Url Historico",
        :url_organograma => "Url Organograma",
        :url_quem_e_quem => "Url Quem E Quem",
        :siorg => nil,
        :licenca => nil
      )
    ])
  end

  it "renders a list of orgaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url Sobre".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url Competencias".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url Historico".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url Organograma".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url Quem E Quem".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
  end
end
