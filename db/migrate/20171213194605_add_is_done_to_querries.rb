class AddIsDoneToQuerries < ActiveRecord::Migration[5.0]
  def change
    add_column :querries, :isdone, :boolean
  end
end
