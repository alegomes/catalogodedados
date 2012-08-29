def init_totais_por_tipo
	tipos = {}
	TipoDataset.all.each do |t|
		tipos[t.nome] = 0
	end
	tipos
end

def init_totais_por_formato
	formatos = {}
	FormatoDataset.all.each do |f|
		formatos[f.nome] = 0
	end
	formatos
end

namespace :reports do

	desc 'Totaliza datasets por orgao'
	task :totalize => :environment do 
	
	  puts "SIORG, ORGAO, # DATASETS, TOTAIS"
		Orgao.all.each do |o|
			
			qtd_datasets = o.datasets.size
			
			totais_por_tipo_por_orgao = init_totais_por_tipo
			totais_por_formato_por_orgao = init_totais_por_formato
			
			o.datasets.each do |d|
				totais_por_tipo_por_orgao[d.tipo_dataset.nome] += 1
				d.formato_datasets.all.each do |f|
					totais_por_formato_por_orgao[f.nome] +=1
				end
			end
			puts "#{o.siorg.codigo}, \"#{o.nome}\", #{o.datasets.size}, #{totais_por_tipo_por_orgao.to_s.sub('{','').sub('}','')},#{totais_por_formato_por_orgao.to_s.sub('{','').sub('}','')}"
		end
	end


end