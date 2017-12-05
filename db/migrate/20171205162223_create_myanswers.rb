class CreateMyanswers < ActiveRecord::Migration[5.0]
  def change
    create_table :myanswers do |t|
      t.string :reply
      t.integer :user_id

      t.timestamps
    end
    add_index :myanswers, :user_id
  end
end
