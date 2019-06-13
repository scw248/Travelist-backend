class ChangeColumn < ActiveRecord::Migration[5.2]
  def change
    change_column :destinations, :image, :blob
  end
end
