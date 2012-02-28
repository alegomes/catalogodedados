require 'rexml/document'
require 'zip/zip'

namespace :siorg do

	desc 'Nao use!!!'
	task :populate_as_dom do 
		file = ENV['XML']
		xml = File.read(file)
		doc = REXML::Document.new xml
		doc.elements.each("*/Orgao/Dados_Cadastro") do |element|
			# INVIAVEL. Gastou-se 2hs para carregar o arquivo em memoria. 
			# Mudando para SAX...
		end
	end
	
	desc 'Carrega a tabela de codigos SIORG a partir do XML de Estruturas Organizacionais Governamentais do Poder Executivo Federal disponivel em http://beta.dados.gov.br/dados/dataset/siorg'
	task :populate => :environment do
		
		destination = Dir.tmpdir
		zip = 'db/dump/Estrutura_Organizacional.zip'
		
		# TODO Como extrair isso?
		# Codigo extraido de http://www.markhneedham.com/blog/2008/10/02/ruby-unzipping-a-file-using-rubyzip/
		puts "Descompactando arquivo #{zip} em #{destination}..."
		Zip::ZipFile.open(zip) { |zip_file|
	   zip_file.each { |f|
	     f_path=File.join(destination, f.name)
	     FileUtils.mkdir_p(File.dirname(f_path))
	     zip_file.extract(f, f_path) unless File.exist?(f_path)
	   }
	  }
		
		file = File.join(destination,'Estrutura_Organizacional.xml') #ENV['XML']
		puts "Processando #{file}..."
		reader = Nokogiri::XML::Reader(File.open(file))
		
		inside_orgao = false
		inside_dados_cadastro = false
		codigo = ""
		nome = ""
		codigo_pai = ""
		
		reader.each do |node|
			
			case node.name
			when "Orgao"
			   inside_orgao = node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT ? true : false
		  when "Dados_Cadastro"
					inside_dados_cadastro = node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT ? true : false
			when "Codigo" 
				if inside_dados_cadastro && node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
					codigo = node.inner_xml()
				end
			when "Nome"
				if inside_dados_cadastro && node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
					nome = node.inner_xml()
				end
			when "Codigo_Pai"
				if inside_dados_cadastro && node.node_type == Nokogiri::XML::Reader::TYPE_ELEMENT
					codigo_pai = node.inner_xml()
					
					siorg_attributes = {
						:codigo_pai => codigo_pai,
						:codigo => codigo,
						:nome => nome
					}
					
					# Extrair isso para um metodo
					#save_or_update(codigo_pai, codigo, nome)
					siorg = Siorg.find_by_codigo(codigo)
					if siorg
						if siorg.update_attributes(siorg_attributes)
							puts "--- SIORG #{siorg_attributes} atualizado com sucesso."
						else
							puts "*** SIORG #{siorg_attributes} nao pode ser atualizado."
						end
					else
						siorg = Siorg.new(siorg_attributes)
						if siorg.save
							puts "--- SIORG #{siorg_attributes} criado com sucesso."
						else
							puts "*** SIORG #{siorg_attributes} nao pode ser criado."
						end
							
					end
				end
			end
		end
	end
	
end

private
def save_or_update(codigo_pai, codigo, nome)
	puts "#{codigo_pai} - #{codigo} - #{nome}"
end