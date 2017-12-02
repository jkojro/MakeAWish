class CreateQuerries < ActiveRecord::Migration[5.0]
  def change
    create_table :querries do |t|
      t.text :question
      t.string :answer
      t.text :tip
      t.integer :wish_id

      t.timestamps
    end
    add_index :querries, :wish_id
  end
end
