class AddFbnameToUser < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :fbname, :string
  end
end
