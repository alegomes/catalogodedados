class CreateIncisoCartaServicosCidadaos < ActiveRecord::Migration
  def change
    create_table :inciso_carta_servicos_cidadaos do |t|
      t.integer :artigo
      t.integer :paragrafo
      t.string :inciso
      t.string :texto

      t.timestamps
    end
  end
end
