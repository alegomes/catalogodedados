# encoding: utf-8

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
	
	  header = "SIORG, ORGAO, # DATASETS, CSV, DOC, HTML, ODT, PDF, PPT, XLS, ZIP, Outro, , Avaliações, Desempenho da gestão, Despesas, Geral, Programas"
		puts header
		
		Orgao.all.each do |o|
			
			qtd_datasets = o.datasets.size
			
			totais_por_tipo_por_orgao = init_totais_por_tipo
			totais_por_formato_por_orgao = init_totais_por_formato
			totais_por_vcge = {}
			
			o.datasets.each do |d|
				totais_por_tipo_por_orgao[d.tipo_dataset.nome] += 1
				d.formato_datasets.all.each do |f|
					totais_por_formato_por_orgao[f.nome] +=1
				end
				d.vcges.each do |v|
					
				end
			end
			puts 	"#{o.siorg.codigo}," +
						"\"#{o.nome}\"," +
						"#{o.datasets.size}," +
						"#{totais_por_formato_por_orgao['CSV']}," + 
						"#{totais_por_formato_por_orgao['DOC']}," + 
						"#{totais_por_formato_por_orgao['HTML']}," + 
						"#{totais_por_formato_por_orgao['ODT']}," + 
						"#{totais_por_formato_por_orgao['PDF']}," + 
						"#{totais_por_formato_por_orgao['PPT']}," + 
						"#{totais_por_formato_por_orgao['XLS']}," + 
						"#{totais_por_formato_por_orgao['ZIP']}," + 
						"#{totais_por_formato_por_orgao['Outro']}," +
						"," +
						"#{totais_por_tipo_por_orgao['Avaliações']}," +
						"#{totais_por_tipo_por_orgao['Desempenho da gestão']}," +
						"#{totais_por_tipo_por_orgao['Despesas']}," +
						"#{totais_por_tipo_por_orgao['Geral']}," +
						"#{totais_por_tipo_por_orgao['Programas']}" 
						
			#"#{totais_por_tipo_por_orgao.to_s.sub('{','').sub('}','')},#{totais_por_formato_por_orgao.to_s.sub('{','').sub('}','')}"
		end
	end


	desc 'Totaliza datasets por orgao'
	task :vcges => :environment do 
	
	  header = "Termo VCGE, Orgão, Quantidade"
		puts header
		
		vcges = {}
		
		Orgao.all.each do |o|
						
			o.datasets.all.each do |d|
				#puts "#{o.nome},#{d.nome.strip!}"
				d.vcges.all.each do |v|
					match = /.*#(.*)$/.match(v.uri)
					vcge = "#{match[1]}" unless match.nil?
					#puts "\t#{v.uri},#{vcge}"
					
					vcges[vcge] ||= {}
					vcges[vcge][o.nome] ||= 0
										
					vcges[vcge][o.nome] += 1
				end
			end
		end
		
		vcges.each_key do |vcge|
			#vcge = vcges[vcge]
			vcges[vcge].each_pair do |orgao, qtd| 
				puts "#{vcge},\"#{orgao}\",#{qtd}"
			end
		end
	end


	desc 'Totaliza URLs'
	task :urls => :environment do 
	
		puts "Orgao,Dataset,URL"
		
		Orgao.all.each do |o|
						
			o.datasets.all.each do |d|
				puts "\"#{o.nome}\",\"#{d.nome}\",#{d.url}"
			end
		end

	end


end