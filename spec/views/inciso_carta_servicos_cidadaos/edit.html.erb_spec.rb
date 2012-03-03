require 'spec_helper'

describe "inciso_carta_servicos_cidadaos/edit" do
  before(:each) do
    @inciso_carta_servicos_cidadao = assign(:inciso_carta_servicos_cidadao, stub_model(IncisoCartaServicosCidadao,
      :artigo => 1,
      :paragrafo => 1,
      :inciso => "MyString",
      :texto => "MyString"
    ))
  end

  it "renders the edit inciso_carta_servicos_cidadao form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => inciso_carta_servicos_cidadaos_path(@inciso_carta_servicos_cidadao), :method => "post" do
      assert_select "input#inciso_carta_servicos_cidadao_artigo", :name => "inciso_carta_servicos_cidadao[artigo]"
      assert_select "input#inciso_carta_servicos_cidadao_paragrafo", :name => "inciso_carta_servicos_cidadao[paragrafo]"
      assert_select "input#inciso_carta_servicos_cidadao_inciso", :name => "inciso_carta_servicos_cidadao[inciso]"
      assert_select "input#inciso_carta_servicos_cidadao_texto", :name => "inciso_carta_servicos_cidadao[texto]"
    end
  end
end
