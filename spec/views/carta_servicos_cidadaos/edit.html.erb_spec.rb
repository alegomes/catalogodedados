require 'spec_helper'

describe "carta_servicos_cidadaos/edit" do
  before(:each) do
    @carta_servicos_cidadao = assign(:carta_servicos_cidadao, stub_model(CartaServicosCidadao,
      :artigo => 1,
      :paragrafo => 1,
      :inciso => 1
    ))
  end

  it "renders the edit carta_servicos_cidadao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => carta_servicos_cidadaos_path(@carta_servicos_cidadao), :method => "post" do
      assert_select "input#carta_servicos_cidadao_artigo", :name => "carta_servicos_cidadao[artigo]"
      assert_select "input#carta_servicos_cidadao_paragrafo", :name => "carta_servicos_cidadao[paragrafo]"
      assert_select "input#carta_servicos_cidadao_inciso", :name => "carta_servicos_cidadao[inciso]"
    end
  end
end
