require 'spec_helper'

describe "datasets/show" do
  before(:each) do
    @dataset = assign(:dataset, stub_model(Dataset,
      :nome => "Nome",
      :descricao => "MyText",
      :url => "Url",
      :guarda => "Guarda",
      :url_documentacao => "Url Documentacao",
      :cobertura_temporal => "Cobertura Temporal",
      :cobertura_geografica => "Cobertura Geografica",
      :origem => "Origem",
      :siorg => nil,
      :vcge => nil,
      :granularidade_temporal => nil,
      :granularidade_geografica => nil,
      :formato_dataset => nil,
      :tipo_dataset => nil,
      :licenca => nil,
      :orgao => ""
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Nome/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/MyText/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Guarda/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Url Documentacao/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cobertura Temporal/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Cobertura Geografica/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Origem/)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(//)
  end
end
