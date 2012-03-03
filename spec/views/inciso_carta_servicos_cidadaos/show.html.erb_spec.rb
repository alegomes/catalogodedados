require 'spec_helper'

describe "inciso_carta_servicos_cidadaos/show" do
  before(:each) do
    @inciso_carta_servicos_cidadao = assign(:inciso_carta_servicos_cidadao, stub_model(IncisoCartaServicosCidadao,
      :artigo => 1,
      :paragrafo => 1,
      :inciso => "Inciso",
      :texto => "Texto"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Inciso/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Texto/)
  end
end
