class RemoveIsdoneFromWishes < ActiveRecord::Migration[5.0]
  def change
    remove_column :wishes, :isdone, :boolean
  end
end
