class AddComentariosToDatasets < ActiveRecord::Migration
  def change
    add_column :datasets, :comentario, :string

  end
end
