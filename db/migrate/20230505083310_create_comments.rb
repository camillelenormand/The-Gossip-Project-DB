class CreateComments < ActiveRecord::Migration[7.0]
  def change
    create_table :comments do |t|
      t.references :gossip, foreign_key: true
      t.references :author, foreign_key: { to_table: :users, column: :user_id }
      t.references :parent, polymorphic: true, index: true
      t.text :content
      t.timestamps
    end
  end
end
