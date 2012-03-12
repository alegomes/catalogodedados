require 'spec_helper'

describe Dataset do
  pending "add some examples to (or delete) #{__FILE__}"

  it 'should accept very long URLs' do
	
		attributes = {
			:nome => "Dataset",
			:descricao => "balbla",
			:url => " http://www.anatel.gov.br/Portal/exibirPortalNivelDois.do?acao=&codItemCanal=1307&codigoVisao=4&nomeVisao=Cidad%E3o&nomeCanal=Intera%E7%E3o%20com%20a%20Sociedade&nomeItemCanal=Processos%20de%20Contas%20Anuais&codCanal=416&nomeCanal=Relacionamento%20com%20a%20Sociedade&codigoVisao=$visao.codigo&site=$visao.tipoSite.codigo",
			:guarda => "bla",
			:url_documentacao => " http://www.anatel.gov.br/Portal/exibirPortalNivelDois.do?acao=&codItemCanal=1307&codigoVisao=4&nomeVisao=Cidad%E3o&nomeCanal=Intera%E7%E3o%20com%20a%20Sociedade&nomeItemCanal=Processos%20de%20Contas%20Anuais&codCanal=416&nomeCanal=Relacionamento%20com%20a%20Sociedade&codigoVisao=$visao.codigo&site=$visao.tipoSite.codigo",
			:cobertura_temporal => "janeiro",
			:cobertura_geografica => "mg",
			:origem => "mpog",
			:orgao => Orgao.first,
			:siorg => Siorg.first,
			:vcges => [Vcge.first],
			:granularidade_temporal_id => GranularidadeTemporal.first.id,
			:granularidade_geografica_id => GranularidadeGeografica.first.id,
			:formato_dataset_id => FormatoDataset.first.id,
			:tipo_dataset_id => TipoDataset.first.id,
			:licenca_id => Licenca.first.id,
			:nao_ha_data => true
		}
				
		dataset = Dataset.new(attributes)
		
		lambda { dataset.save! }.should_not raise_error
	end
end
