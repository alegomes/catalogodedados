require 'spec_helper'

describe "datasets/edit" do
  before(:each) do
    @dataset = assign(:dataset, stub_model(Dataset,
      :nome => "MyString",
      :descricao => "MyText",
      :url => "MyString",
      :guarda => "MyString",
      :url_documentacao => "MyString",
      :cobertura_temporal => "MyString",
      :cobertura_geografica => "MyString",
      :origem => "MyString",
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

  it "renders the edit dataset form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => datasets_path(@dataset), :method => "post" do
      assert_select "input#dataset_nome", :name => "dataset[nome]"
      assert_select "textarea#dataset_descricao", :name => "dataset[descricao]"
      assert_select "input#dataset_url", :name => "dataset[url]"
      assert_select "input#dataset_guarda", :name => "dataset[guarda]"
      assert_select "input#dataset_url_documentacao", :name => "dataset[url_documentacao]"
      assert_select "input#dataset_cobertura_temporal", :name => "dataset[cobertura_temporal]"
      assert_select "input#dataset_cobertura_geografica", :name => "dataset[cobertura_geografica]"
      assert_select "input#dataset_origem", :name => "dataset[origem]"
      assert_select "input#dataset_siorg", :name => "dataset[siorg]"
      assert_select "input#dataset_vcge", :name => "dataset[vcge]"
      assert_select "input#dataset_granularidade_temporal", :name => "dataset[granularidade_temporal]"
      assert_select "input#dataset_granularidade_geografica", :name => "dataset[granularidade_geografica]"
      assert_select "input#dataset_formato_dataset", :name => "dataset[formato_dataset]"
      assert_select "input#dataset_tipo_dataset", :name => "dataset[tipo_dataset]"
      assert_select "input#dataset_licenca", :name => "dataset[licenca]"
      assert_select "input#dataset_orgao", :name => "dataset[orgao]"
    end
  end
end
