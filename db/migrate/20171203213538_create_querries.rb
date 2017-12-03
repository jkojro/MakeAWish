class CreateQuerries < ActiveRecord::Migration[5.0]
  def change
    create_table :querries do |t|
      t.text :question
      t.string :answer
      t.text :tip
      t.references :wish, foreign_key: true

      t.timestamps
    end
  end
end
