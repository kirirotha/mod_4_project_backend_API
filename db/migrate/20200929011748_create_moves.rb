class CreateMoves < ActiveRecord::Migration[6.0]
  def change
    create_table :moves do |t|
      t.string :letter
      t.integer :x
      t.integer :y
      t.references :game, null: false, foreign_key: true

      t.timestamps
    end
  end
end
