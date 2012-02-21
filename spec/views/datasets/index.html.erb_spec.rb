require 'spec_helper'

describe "datasets/index" do
  before(:each) do
    assign(:datasets, [
      stub_model(Dataset,
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
      ),
      stub_model(Dataset,
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
      )
    ])
  end

  it "renders a list of datasets" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Nome".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "MyText".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Guarda".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Url Documentacao".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cobertura Temporal".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Cobertura Geografica".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Origem".to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => nil.to_s, :count => 2
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "".to_s, :count => 2
  end
end
