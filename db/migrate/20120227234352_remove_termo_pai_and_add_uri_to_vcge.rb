class RemoveTermoPaiAndAddUriToVcge < ActiveRecord::Migration
  def up
		change_table :vcges do |t|
		  t.remove :termo_pai_id
		  t.rename :termo, :uri
		end
  end

  def down
		change_table :vcges do |t|
		  t.integer :termo_pai_id
		  t.rename :uri, :termo
		end

  end
end
