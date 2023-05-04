class RemoveUserIdColumnInPrivateMessage < ActiveRecord::Migration[7.0]
  def change
    remove_column :private_messages, :user_id
  end
end
