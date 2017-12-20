class RemoveCompletedAtFromQuerries < ActiveRecord::Migration[5.0]
  def change
    remove_column :querries, :completed_at, :datetime
  end
end
