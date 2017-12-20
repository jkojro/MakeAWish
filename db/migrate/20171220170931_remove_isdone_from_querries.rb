class RemoveIsdoneFromQuerries < ActiveRecord::Migration[5.0]
  def change
    remove_column :querries, :isdone, :boolean
  end
end
