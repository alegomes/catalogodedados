require 'spec_helper'

describe "orgaos/show" do
  before(:each) do
    @orgao = assign(:orgao, stub_model(Orgao,
      :nome => "Nome",
      :url => "Url",
      :url_sobre => "Url Sobre",
      :url_competencias => "Url Competencias",
      :url_historico => "Url Historico",
      :url_organograma => "Url Organograma",
      :url_quem_e_quem => "Url Quem E Quem",
      :siorg => nil,
      :licenca => nil
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url Sobre/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url Competencias/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url Historico/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url Organograma/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url Quem E Quem/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
