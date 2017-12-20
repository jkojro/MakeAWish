class RemoveCompletedAtFromWishes < ActiveRecord::Migration[5.0]
  def change
    remove_column :wishes, :completed_at, :datetime
  end
end
