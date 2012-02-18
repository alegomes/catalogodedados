class CreateOrgaos < ActiveRecord::Migration
  def change
    create_table :orgaos do |t|
      t.string :nome
      t.string :url
      t.string :url_sobre
      t.string :url_competencias
      t.string :url_historico
      t.string :url_organograma
      t.string :url_quem_e_quem
      t.references :siorg
      t.references :licenca

      t.timestamps
    end
    add_index :orgaos, :siorg_id
    add_index :orgaos, :licenca_id
  end
end
