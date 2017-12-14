class AddIsDoneToWishes < ActiveRecord::Migration[5.0]
  def change
    add_column :wishes, :isdone, :boolean
  end
end
