class AddQuerryIdToMyanswers < ActiveRecord::Migration[5.0]
  def change
    add_column :myanswers, :querry_id, :integer
    add_index :myanswers, :querry_id
  end
end
