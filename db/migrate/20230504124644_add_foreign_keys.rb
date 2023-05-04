class AddForeignKeys < ActiveRecord::Migration[7.0]
  def change
    add_reference :users, :city, foreign_key: true
    add_reference :gossips, :user, foreign_key: true
    add_reference :private_messages, :user, foreign_key: true
  end
end
