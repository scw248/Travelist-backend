class RemoveHometownIdFromUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :hometown_id, :integer
  end
end
