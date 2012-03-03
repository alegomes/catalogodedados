class CreateObediencias < ActiveRecord::Migration
 def change
    create_table :obediencia do |t|
      t.references 	:orgao
			t.references 	:inciso_carta_servicos_cidadao
      t.integer 		:contempla_cd
      t.text				:comentarios

      t.timestamps
    end
    add_index :obediencia, :orgao_id
		add_index :obediencia, :inciso_carta_servicos_cidadao_id
  end
end
