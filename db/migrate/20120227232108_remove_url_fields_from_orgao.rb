class RemoveUrlFieldsFromOrgao < ActiveRecord::Migration
  def up
    remove_column :orgaos, :url_sobre
        remove_column :orgaos, :url_competencias
        remove_column :orgaos, :url_historico
        remove_column :orgaos, :url_organograma
        remove_column :orgaos, :url_quem_e_quem
      end

  def down
    add_column :orgaos, :url_quem_e_quem, :string
    add_column :orgaos, :url_organograma, :string
    add_column :orgaos, :url_historico, :string
    add_column :orgaos, :url_competencias, :string
    add_column :orgaos, :url_sobre, :string
  end
end
