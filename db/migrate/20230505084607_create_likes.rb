class CreateLikes < ActiveRecord::Migration[7.0]
  def change
    create_table :likes do |t|
      t.references :gossip, foreign_key: true
      t.references :comment, foreign_key: true
      t.references :user, foreign_key: true
      t.timestamps
    end
  end
end
