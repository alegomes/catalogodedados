class AddCodigoPaiToSiorg < ActiveRecord::Migration
  def change
    add_column :siorgs, :codigo_pai, :string
  end
end
