class AddCompletedAtToQuerries < ActiveRecord::Migration[5.0]
  def change
    add_column :querries, :completed_at, :datetime
  end
end
