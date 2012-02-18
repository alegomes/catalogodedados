class AddOrgaoIdToLink < ActiveRecord::Migration
  def change
    add_column :links, :orgao_id, :integer

  end
end
