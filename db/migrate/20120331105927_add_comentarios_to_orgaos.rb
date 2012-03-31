class AddComentariosToOrgaos < ActiveRecord::Migration
  def change
    add_column :orgaos, :comentarios, :text

  end
end
