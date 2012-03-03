require 'spec_helper'

describe "inciso_carta_servicos_cidadaos/index" do
  before(:each) do
    assign(:inciso_carta_servicos_cidadaos, [
      stub_model(IncisoCartaServicosCidadao,
        :artigo => 1,
        :paragrafo => 1,
        :inciso => "Inciso",
        :texto => "Texto"
      ),
      stub_model(IncisoCartaServicosCidadao,
        :artigo => 1,
        :paragrafo => 1,
        :inciso => "Inciso",
        :texto => "Texto"
      )
    ])
  end

  it "renders a list of inciso_carta_servicos_cidadaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Inciso".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Texto".to_s, :count => 2
  end
end
