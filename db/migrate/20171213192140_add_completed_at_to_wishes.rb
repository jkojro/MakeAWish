class AddCompletedAtToWishes < ActiveRecord::Migration[5.0]
  def change
    add_column :wishes, :completed_at, :datetime
  end
end
