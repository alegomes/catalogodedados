class AddUrlCartaServicosCidadaoToOrgaos < ActiveRecord::Migration
  def change
    add_column :orgaos, :url_carta_servicos_cidadao, :string

  end
end
