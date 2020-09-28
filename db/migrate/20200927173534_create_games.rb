class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.integer :user1_id
      t.integer :user2_id
      t.integer :user1_score
      t.integer :user2_score
      t.string :user1_bag
      t.string :user2_bag
      t.boolean :accepted
      t.boolean :active

      t.timestamps
    end
  end
end
