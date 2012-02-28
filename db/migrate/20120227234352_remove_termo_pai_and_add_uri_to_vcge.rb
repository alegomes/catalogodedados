class RemoveTermoPaiAndAddUriToVcge < ActiveRecord::Migration
  def up
		change_table :vcges do |t|
		  t.remove :termo_pai_id
		  t.remove :termo
		  t.string :uri
		end
  end

  def down
		change_table :vcges do |t|
		  t.integer :termo_pai_id
		  t.string  :termo
		  t.remove  :uri
		end

  end
end
