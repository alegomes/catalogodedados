require 'spec_helper'

describe "carta_servicos_cidadaos/show" do
  before(:each) do
    @carta_servicos_cidadao = assign(:carta_servicos_cidadao, stub_model(CartaServicosCidadao,
      :artigo => 1,
      :paragrafo => 1,
      :inciso => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
  end
end
