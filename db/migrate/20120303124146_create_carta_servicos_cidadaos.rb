class CreateCartaServicosCidadaos < ActiveRecord::Migration
  def change
    create_table :carta_servicos_cidadaos do |t|
      t.integer :artigo
      t.integer :paragrafo
      t.integer :inciso

      t.timestamps
    end
  end
end
