namespace :debug do

	desc 'Imprime quantidade de datasets por Orgao'
	task :count_datasets => :environment do 
		
		Orgao.all.each do |o|
			
			vcges = 0
			o.datasets.each do |d|
				vcges += d.vcges.size
			end
			puts "#{o.id},#{o.nome}\t#{o.datasets.size}\t#{vcges}"
		end
	end


	desc 'Lista termos VCGE utilizados em um Orgao'
	task :find_wrong_vcges => :environment do
		
		Orgao.all.each do |o|
			o.datasets.each do |d|
				d.vcges.each do |v|
					puts "Orgao: #{o.nome} (#{o.id})\nDataset: #{d.nome} (#{d.id})\nVCGE Incorreto: #{v.uri}\n" if /.*#(.*)$/.match(v.uri).nil?
				end
			end
		end
	end

end