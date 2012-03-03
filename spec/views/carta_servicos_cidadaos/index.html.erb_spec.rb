require 'spec_helper'

describe "carta_servicos_cidadaos/index" do
  before(:each) do
    assign(:carta_servicos_cidadaos, [
      stub_model(CartaServicosCidadao,
        :artigo => 1,
        :paragrafo => 1,
        :inciso => 1
      ),
      stub_model(CartaServicosCidadao,
        :artigo => 1,
        :paragrafo => 1,
        :inciso => 1
      )
    ])
  end

  it "renders a list of carta_servicos_cidadaos" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
