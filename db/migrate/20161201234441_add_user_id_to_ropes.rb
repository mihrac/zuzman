class AddUserIdToRopes < ActiveRecord::Migration[5.0]
  def change
    add_column :ropes, :user_id, :integer
  end
end
