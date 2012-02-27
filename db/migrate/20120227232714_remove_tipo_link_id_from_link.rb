class RemoveTipoLinkIdFromLink < ActiveRecord::Migration
  def up
    remove_column :links, :tipo_link_id
      end

  def down
    add_column :links, :tipo_link_id, :integer
  end
end
